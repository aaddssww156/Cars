const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('CardsDatabase', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql'
  });

module.exports = sequelize;

