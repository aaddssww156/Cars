const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('CarsDatabase', 'root', 'password', {
    host: 'localhost',
    dialect: 'mysql'
  });

module.exports = sequelize;

