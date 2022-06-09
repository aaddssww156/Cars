const disk = require("../models/disk");
const car = require("../models/car");
const tire = require("../models/tire");


async function findCars() {
    return await car.findAll({
        attributes: ['id', 'manufacturer', 'model', 'generation', 'width', 'height', 'radius'],
        include: {
            model: tire,
            attributes: ['id', 'manufacturer', 'name', 'width', 'height', 'radius', 'season', 'price']
        },
        include: {
            model: disk,
            attributes: ['id', 'manufacturer', 'name', 'width', 'diameter', 'DIA', 'PCD', 'price', 'carName']
        }
    })
    .then(console.log("All cars found!"))
    .catch(err => console.log(err))
}

module.exports = findCars