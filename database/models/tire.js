const {DataTypes, Model} = require('sequelize')
const sequelize = require('../sequelize')
class tire extends Model {}

tire.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    manufacturer: {
        type: DataTypes.STRING(50)
    },
    name: {
        type: DataTypes.STRING(50)
    },
    width: {
        type: DataTypes.INTEGER
    },
    height: {
        type: DataTypes.INTEGER
    },
    radius: {
        type: DataTypes.STRING(3)
    },
    season: {
        type: DataTypes.STRING(4)
    },
    price: {
        type: DataTypes.INTEGER
    }}, {
        sequelize: sequelize,
        timestamps: false,
        tableName: 'tire'
})

module.exports = tire