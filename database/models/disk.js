const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
class disk extends Model {}

disk.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    manufacturer: {
        type: DataTypes.STRING
    },
    name: {
        type: DataTypes.STRING
    },
    width: {
        type: DataTypes.STRING
    },
    diameter: {
        type: DataTypes.INTEGER
    },
    DIA: {
        type: DataTypes.STRING
    },
    PCD: {
        type: DataTypes.STRING
    },
    price: {
        type: DataTypes.INTEGER
    },
    carName: {
        type: DataTypes.STRING
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'disk'
    })

module.exports = disk