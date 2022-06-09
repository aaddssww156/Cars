const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
class cars_to_tires extends Model {}

cars_to_tires.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'cars_to_tires'
    })

module.exports = cars_to_tires