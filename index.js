const express = require('express');
const tire = require('./database/models/tire');
const disk = require('./database/models/disk')
const car = require('./database/models/car')
const getAllDisks = require('./database/selects/getAllDisks');
const getAllTires = require('./database/selects/getAllTires');
const getAllTiresFromCars = require('./database/selects/getAllTiresFromCars');
const getAllDisksFromCars = require('./database/selects/getAllDisksFromCars');
const findTires = require('./database/selects/findTires')
const findDisks = require('./database/selects/findDisks')
const findCars = require('./database/selects/findCars')
const sequelize = require('./database/sequelize')
const urlencodedParser = express.urlencoded({extended: false});
const fs = require('fs')

const app = express();
const port = 8808;

app.get('/cars', (req, res) => {
  console.log("Cars!")
  var cars = findCars()
  cars.then(data => console.log(data))
})

app.post('/tires', urlencodedParser, (req,res) => {
  console.log("Post working!")
  console.log(req.body)
  let width = req.body.length
  let height = req.body.height
  let radius = req.body.radius
  let generation = req.body.pokolenie
  let model = req.body.model
  let manufacturer = req.body.manufacturer
  let season
  if(req.body.season === 'summer') {
    season = 'Лето'
  } else {
    season = 'Зима'
  }

  let data = getAllTiresFromCars(width, height, radius)
  let jsonData = "["
  data.then(dat => {
    for(let i = 0; i < dat.length; i++) {
      jsonData += JSON.stringify(dat[i].dataValues) + ','
    }
    if(dat.length !== 0) {
      jsonData = jsonData.slice(0, jsonData.length - 1)
    }
    jsonData += ']'
    fs.writeFileSync('client/catalog.json', jsonData)
    console.log(jsonData)
  })

  res.sendFile('index.html', {root: 'client'})
})

app.post('/disks', urlencodedParser, (req, res) => {
  console.log("Post!")

  let width = req.body.length
  let diameter = req.body.radius
  let dia = req.body.dia
  let pcd = req.body.pcd
  let carManufacturer = req.body.manufacturer
  let carName = req.body.model

  let data = getAllDisksFromCars(carManufacturer, carName)

  let jsonData = '['
  data.then(dat => {
    for(let i = 0; i < dat.length; i++) {
      jsonData += JSON.stringify(dat[i].dataValues) + ','
    }
    if(dat.length !== 0) {
      jsonData = jsonData.slice(0, jsonData.length - 1)
    }
    jsonData += ']'
    fs.writeFileSync('client/catalog.json', jsonData)
    console.log(jsonData)
  })
  res.sendFile('index.html', {root: 'client'})
})


app.get('/', (req, res) => {
   //createData()

   //отображение страницы
   res.sendFile('index.html', {root: 'client'})
   
   //get на данные
   let jsonData = "["
   var tires = getAllTires()
   tires.then((data) => {
     for(let i = 0; i < data.length; i ++) {
      //console.log(JSON.stringify(data[i].dataValues))
      jsonData += JSON.stringify(data[i].dataValues) + ','
     }
     jsonData = jsonData.slice(0, jsonData.length - 1)
     jsonData += ']'
     //console.log(jsonData)
     fs.writeFileSync('client/catalog.json', jsonData)
   })
});

app.get('/tires', (req,res) => {
  var tires = getAllTires()
  tires.then(data => {res.status(200).json(data)})
})

app.get('/disks', (req,res) => {
  //createData()

   //отображение страницы
   res.sendFile('index.html', {root: 'client'})
   
   //get на данные
   let jsonData = "["
   var tires = getAllDisks()
   tires.then((data) => {
     for(let i = 0; i < data.length; i ++) {
      //console.log(JSON.stringify(data[i].dataValues))
      jsonData += JSON.stringify(data[i].dataValues) + ','
     }
     jsonData = jsonData.slice(0, jsonData.length - 1)
     jsonData += ']'
     //console.log(jsonData)
     fs.writeFileSync('client/catalog.json', jsonData)
   })
})


app.use(express.static(__dirname +'/client'));



sequelize.sync().then(() => {
  app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
  });
}).catch(err => console.log(err))
