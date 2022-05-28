const tire = require('../models/tire')

async function getAllTires() {
    return await tire.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'height', 'radius', 'season', 'price']
    })
    .then(console.log("All tires found"))
    .catch(err => console.log(err))
}

module.exports = getAllTires