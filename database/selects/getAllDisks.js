const disk = require('../models/disk');

async function getAllDisks() {
    return await disk.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'diameter', 'DIA', 'PCD', 'price', 'carName']
    })
    .then(console.log("All disks found!"))
    .catch(err => console.log(err))
}

module.exports = getAllDisks