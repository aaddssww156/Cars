const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
const disk = require('./disk')
const tire = require('./tire')
class car extends Model {}


car.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    manufacturer: {
        type: DataTypes.STRING
    },
    model: {
        type: DataTypes.STRING
    },
    generation: {
        type: DataTypes.STRING
    },
    width: {
        type: DataTypes.STRING
    },
    height: {
        type: DataTypes.STRING
    },
    radius: {
        type: DataTypes.STRING
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'car'
});


car.belongsToMany(tire, {
    through: "cars_to_tires"
})

tire.belongsToMany(car, {
    through: "cars_to_tires"
})

car.belongsToMany(disk, {
    through: "cars_to_disks"
})

disk.belongsToMany(car, {
    through: "cars_to_disks"
})

module.exports = car