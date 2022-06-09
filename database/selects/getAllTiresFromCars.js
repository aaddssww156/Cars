const tire = require('../models/tire')
const {Op} = require("sequelize");

async function getAllTiresFromCars(widthh, heightt, radiuss) {
    return await tire.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'height', 'radius', 'season', 'price'],
        where: {
            [Op.and]: [
                {width: widthh},
                {height: heightt},
                {radius: radiuss}
            ]
        }
    })
    .then(console.log("All needed tires from cars found!"))
    .catch(err => console.log(err))
}

module.exports = getAllTiresFromCars;