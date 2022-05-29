const tire = require("../models/tire");


async function findTires(width, height, radius, season) {
    return await tire.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'height', 'radius', 'season', 'price'],
        where: {
            //id: id == null ? null : id,
            //manufacturer: manufacturer ? null == null : manufacturer,
            //name: name == null ? null : name,
            width: width == null ? null : width,
            height: height == null ? null : height,
            radius: radius == null ? null : radius,
            season: season == null ? null : season,
            //price: price == null ? null : price
        }
    })
    .then(console.log("all needed tires found"))
    .catch(err => console.log(err))
}

module.exports = findTires