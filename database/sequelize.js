const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('CardsDatabase', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql',
    define: {
      timestamps: false
    }
  });

module.exports = sequelize;

