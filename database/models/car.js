const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
class car extends Model {}


car.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'car'
});

module.exports = car