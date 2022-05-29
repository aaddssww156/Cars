const disk = require("../models/disk");


async function findDisks(width, diameter, dia, pcd) {
    return await disk.findAll({
        attributes: ['id', 'manufacturer', 'name', 'width', 'diameter', 'DIA', 'PCD', 'price', 'carName'],
        where: {
            //id: id == null ? null : id,
            //manufacturer: manufacturer ? null == null : manufacturer,
            //name: name == null ? null : name,
            width: width == null ? null : width,
            diameter: diameter == null ? null : diameter,
            dia: dia == null ? null : dia,
            pcd: pcd == null ? null : pcd,
            //price: price == null ? null : price
        }
    })
    .then(console.log("all needed disks found"))
    .catch(err => console.log(err))
}

module.exports = findDisks