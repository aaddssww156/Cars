const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
class disk extends Model {}

disk.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'disk'
    })

module.exports = disk