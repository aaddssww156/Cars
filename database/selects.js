const disk = require('./models/disk');
const tire = require('./models/tire')

async function getAllTires() {
    return await tire.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'height', 'radius', 'season', 'price']
    })
    .then(console.log("All tires found"))
    .catch(err => console.log(err))
}

async function getAllDisks() {
    return await disk.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'diameter', 'DIA', 'PCD', 'price', 'carName']
    })
    .then(console.log("All disks found!"))
    .catch(err => console.log(err))
}

module.exports = getAllTires, getAllDisks;