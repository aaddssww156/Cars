const disk = require('../models/disk');

async function getAllDisksFromCars(carMan, carNam) {
    return await disk.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'diameter', 'DIA', 'PCD', 'price', 'carName', 'carManufacturer'],
        where: {
            [Op.and]: [
                {carName: carNam},
                {carManufacturer: carMan}
            ]
        }
    })
    .then(console.log("All needed disks from cars found"))
    .catch(err => console.log(err))
}

module.exports = getAllDisksFromCars;