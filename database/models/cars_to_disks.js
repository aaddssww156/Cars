const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
class cars_to_disks extends Model {}

cars_to_disks.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'cars_to_disks'
    })

module.exports = cars_to_disks