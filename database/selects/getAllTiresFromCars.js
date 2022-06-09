const tire = require('../models/tire')
const {Op} = require("sequelize");
const car = require('../models/car');

async function getAllTiresFromCars(carNam, carMan) {
    return await tire.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'height', 'radius', 'season', 'price'],
        include: {
            model: car,
            where: {
                [Op.and]: [
                    {manufacturer: carNam},
                    {model: carMan}
                ]
            }
        },
        raw: true
    })
    .then(console.log("All needed tires from cars found!"))
    .catch(err => console.log(err))
}

module.exports = getAllTiresFromCars;