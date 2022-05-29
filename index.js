const express = require('express');
const tire = require('./database/models/tire');
const disk = require('./database/models/disk')
const getAllDisks = require('./database/selects/getAllDisks');
const getAllTires = require('./database/selects/getAllTires');
const findTires = require('./database/selects/findTires')
const findDisks = require('./database/selects/findDisks')
const sequelize = require('./database/sequelize')
const urlencodedParser = express.urlencoded({extended: false});
//const getAllDisks = require('./database/selects')
//const { Sequelize } = require('sequelize/types');
const fs = require('fs')

const app = express();
const port = 8808;

app.post('/tires', urlencodedParser, (req,res) => {
  console.log("Post working!")
  let width = req.body.length
  let height = req.body.height
  let radius = req.body.radius
  let season
  if(req.body.season === 'summer') {
    season = 'Лето'
  } else {
    season = 'Зима'
  }

  let data = findTires(width, height, radius, season)
  let jsonData = "["
  data.then(dat => {
    for(let i = 0; i < dat.length; i++) {
     // console.log(dat[i].dataValues)
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

  let data = findDisks(width, diameter, dia, pcd)

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

//app.post('/', (req,res) => {
//  res.send("Миша, нет тут твоих путей до файла, ибо всё обрабаывается в индексе и мы по пост запросу обрабатываем собсна сам запрос и отправляем в теле данные, которые мы получаем на сервере и с ними работаем")
//})

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
   
   //console.log(data)
   
   //tires.then(data => {res.status(200).json(data)})
   //let data = JSON.stringify(tires)
   //console.log(data)
   //fs.writeFileSync('catalog.json', data)
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

async function createData() {

  let manufacturerr = [
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Nissan",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Subaru",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"LegeArtis",
"LegeArtis",
"iFree",
"iFree",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay Toyota",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"LegisArtis Concept",
"Replay BMW",
"Replay BMW",
"Replay BMW",
"Replay BMW"]

let namee = [
"NS76",
"NS179",
"NS166",
"NS180",
"NS215",
"NS225",
"NS48",
"NS251",
"NS121",
"NS5409",
"NS146",
"NS100",
"NS123",
"NS48",
"NS178",
"NS203",
"NS76",
"NS225",
"NS121",
"NS48",
"NS146",
"NS 48",
"NS5409",
"NS188",
"NS73",
"NS38",
"NS99",
"NS77",
"NS38",
"NS224",
"NS66",
"NS82",
"NS66",
"NS150",
"NS196",
"NS229",
"NS76",
"NS179",
"NS63",
"NS68",
"NS45",
"NS180",
"NS160",
"NS215",
"NS225",
"NS121",
"NS48",
"NS251",
"NS5409",
"NS146",
"NS203",
"NS178",
"NS151",
"NS100",
"NS48",
"NS123",
"SB25",
"SB96",
"SB5",
"SB15",
"SB25",
"SB22",
"SB11",
"SB11",
"SB14",
"SB18",
"SB11",
"SB18",
"SB8",
"SB43",
"SB84",
"SB67",
"SB25",
"SB5",
"SB15",
"SB11",
"SB11",
"SB18",
"SB84",
"SB67",
"SB43",
"SB12",
"SB62",
"SB27",
"SB32",
"SB105",
"SB103",
"SB102",
"SB25",
"SB5",
"SB15",
"SB22",
"SB14",
"SB8",
"SB18",
"SB11",
"SB25",
"SB96",
"SB5",
"SB15",
"SB25",
"SB8",
"SB22",
"SB11",
"TY21",
"TY196",
"TY2051",
"TY259",
"TY219",
"TY229",
"TY552",
"TY552",
"TY21",
"TY196",
"TY2051",
"TY259",
"TY219",
"TY229",
"TY552",
"TY552",
"TY439",
"TY210",
"TY438",
"TY21",
"TY196",
"TY2051",
"TY259",
"TY219",
"TY438",
"TY210",
"TY439",
"TY229",
"TY552",
"TY552",
"Ernesto",
"Ernesto",
"TY438",
"TY439",
"TY210",
"TY21",
"TY196",
"TY2051",
"TY259",
"TY219",
"B131",
"B70",
"B47",
"B151",
"B121",
"B83",
"B175",
"B203",
"B129",
"B74",
"B5255",
"B529",
"B58",
"B58",
"B189T",
"B225"]

let widthh = [
"6,5",
"7",
"6,5",
"7",
"7",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"7",
"7",
"7",
"7,5",
"7,5",
"6,5",
"7",
"6,5",
"6,5",
"6,5",
"7",
"6,5",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"7",
"7",
"6,5",
"7",
"6,5",
"7",
"7",
"6,5",
"7",
"7",
"7",
"7",
"7",
"7,5",
"7",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"7,5",
"7,5",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"6,5",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"7",
"7",
"7",
"7",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"7",
"7",
"7",
"6,5",
"7",
"6,5",
"6,5",
"6,5",
"7",
"7",
"7",
"7",
"7",
"6,5",
"6,5",
"6,5",
"7",
"7",
"7",
"7",
"7",
"6,5",
"6,5",
"6,5",
"6,5",
"5,5",
"6,5",
"7",
"7",
"7",
"7",
"7",
"6,5",
"5,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"6,5",
"5,5",
"7",
"7",
"7",
"7",
"7",
"8",
"9",
"9",
"8,5",
"8",
"8",
"8",
"7,5",
"10",
"11,5",
"9,5",
"10",
"8",
"8",
"8,5",
"8,5"]

let diameterr = [
16,
17,
15,
16,
18,
18,
16,
16,
16,
16,
16,
17,
17,
17,
17,
17,
16,
18,
16,
16,
16,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
16,
17,
17,
17,
17,
16,
18,
18,
18,
16,
16,
16,
16,
16,
17,
17,
17,
17,
17,
17,
17,
17,
17,
16,
17,
16,
16,
16,
16,
16,
16,
16,
16,
17,
17,
17,
17,
17,
16,
16,
16,
16,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
16,
16,
16,
16,
16,
16,
17,
17,
17,
16,
17,
16,
16,
16,
17,
17,
17,
17,
17,
16,
16,
16,
17,
17,
17,
17,
17,
16,
16,
16,
15,
15,
15,
17,
17,
17,
17,
17,
15,
15,
15,
16,
16,
16,
15,
15,
15,
15,
15,
17,
17,
17,
17,
17,
17,
18,
18,
18,
18,
18,
18,
17,
19,
21,
19,
20,
19,
19,
19,
20]

let DIAA = [
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"66,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"56,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"60,1",
"72,6",
"72,6",
"72,6",
"74,1",
"72,6",
"72,6",
"66,6",
"66,6",
"72,5",
"72,6",
"66,6",
"72,5",
"72,6",
"72,6",
"66,6",
"66,6"]

let PCDD = [
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5x114,3",
"5X100",
"5X114,3",
"5X100",
"5X100",
"5X114,3",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X114,3",
"5X114,3",
"5X114,3",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X100",
"5X114,3",
"5X100",
"5X100",
"5X114,3",
"5X100",
"5X100",
"5X100",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X114,3",
"5X120",
"5x120",
"5x120",
"5x120",
"5x120",
"5x120",
"5x112",
"5x112",
"5x120",
"5x120",
"5x112",
"5x120",
"5x120",
"5x120",
"5x112",
"5x112"]

let pricee = [
5440,
6490,
7370,
8290,
8510,
8510,
9210,
9210,
9210,
10200,
9900,
11510,
11510,
11510,
11510,
11510,
5440,
8510,
9210,
9210,
9900,
11510,
11970,
11970,
11970,
11970,
11970,
11970,
11970,
12350,
12430,
12430,
12430,
12430,
12430,
12900,
5440,
6490,
6490,
6490,
7640,
8290,
8510,
8510,
8510,
9210,
9210,
10200,
9900,
11510,
11510,
11510,
11510,
11510,
11510,
11510,
7100,
7150,
7340,
8290,
8680,
8740,
8740,
8740,
8740,
8740,
8740,
8740,
8740,
9770,
9770,
9770,
7100,
7340,
8290,
8740,
8740,
8740,
9770,
9770,
9770,
11510,
11970,
11970,
11970,
11970,
11971,
11970,
7100,
7340,
8290,
8740,
8740,
8740,
8740,
8740,
7154,
7100,
7150,
7340,
8290,
8680,
8740,
8740,
7650,
7910,
8350,
8130,
8380,
9210,
10340,
10340,
7680,
7910,
8350,
8130,
8380,
9210,
10340,
10340,
7370,
7370,
7370,
7680,
7910,
8350,
8130,
8380,
7370,
7370,
7370,
9210,
10340,
10560,
5060,
5062,
7370,
7370,
7370,
7680,
7910,
8350,
8130,
8380,
7640,
640,
8510,
8510,
8510,
8510,
8680,
8680,
9500,
9500,
10950,
10940,
11410,
11450,
12000,
12490]

let carNamee = [
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Xtrail",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Qashqai",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Teana",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Outback",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Forester",
"Impreza",
"Impreza",
"Impreza",
"Impreza",
"Impreza",
"Impreza",
"Impreza",
"Impreza",
"Legacy",
"Legacy",
"Legacy",
"Legacy",
"Legacy",
"Legacy",
"Legacy",
"Legacy",
"RAV4",
"RAV4",
"RAV4",
"RAV4",
"RAV4",
"RAV4",
"RAV4",
"RAV4",
"MarkX",
"MarkX",
"MarkX",
"MarkX",
"MarkX",
"MarkX",
"MarkX",
"MarkX",
"Corolla",
"Corolla",
"Corolla",
"Corolla",
"Corolla",
"Corolla",
"Corolla",
"Corolla",
"Chaser",
"Chaser",
"Chaser",
"Chaser",
"Chaser",
"Chaser",
"Chaser",
"Chaser",
"Camry",
"Camry",
"Camry",
"Camry",
"Camry",
"Camry",
"Camry",
"Camry",
"X5",
"X5",
"X5",
"X5",
"X5",
"X5",
"X5",
"X5",
"X6",
"X6",
"X6",
"X6",
"X6",
"X6",
"X6",
"X6"]

  for (let i = 0; i < 159; i ++) {
    await disk.create({
      manufacturer: manufacturerr[i],
      name: namee[i],
      width: widthh[i],
      diameter: diameterr[i],
      DIA: DIAA[i],
      PCD: PCDD[i],
      price: pricee[i],
      carName: carNamee[i]
    })
    .then(console.log("cool"))
    .catch(err => console.log(err))
  }


  // 26


  
  return 1;
}

sequelize.sync().then(() => {
  app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
  });
}).catch(err => console.log(err))

//const mysql = require("mysql2")
//const db = mysql.createConnection({
//    user: "root",
//    host: "localhost",
//    password: "password",
//    database: "CarsDatabase",
//});



//console.log(sequelize)

//console.log(db)

/**
 * 
 * let manufacturerr = ["Bridgestone", "Hankook", "Maxxis", "Maxxis",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
  "Yokohama",
"Bridgestone",
"Dunlop",
"Dunlop",
"Dunlop",
"Dunlop",
"Dunlop",
"Dunlop",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Hankook",
"Maxxis",
"Maxxis",
"Maxxis",
"Maxxis",
"Maxxis",
"Maxxis",
"Maxxis",
"Maxxis",
"Nexen",
"Nexen",
"Nexen",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",
"Yokohama",]

//let name = ["Escopia EP200","Ventus V12 Evo2","Premitra HP5", "Pragmatra MP10", "Geolandar SUV G055", "Geolandar SUV G055", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth AE01J", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-A AE50", "Geolandar SUV G055", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-ES ES32", "BlueEarth-Van RY55", "BlueEarth-ES ES32", "BlueEarth-Van RY55", ""]
let namee = [
  "Escopia EP200",
"Ventus V12 Evo2",
"Premitra HP5",
"Pragmatra MP10",
"Geolandar SUV G055",
"Geolandar SUV G055",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth AE01J",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-A AE50",
"Geolandar SUV G055",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-ES ES32",
"BlueEarth-Van RY55",
"BlueEarth-ES ES32",
"BlueEarth-Van RY55",
"BlueEarth-ES ES32",
"C.Drive 2 AC02A",
"BlueEarth-Van RY61",
"BlueEarth-ES ES32",
"Geolandar A/T G015",
"BlueEarth-ES ES32",
"BlueEarth-XT AE61",
"Geolandar A/T G015",
"Geolandar G033V",
"Geolandar A/T G015",
"Geolandar CVg058",
"BlueEarth-ES ES32",
"BlueEarth-XT AE61",
"Geolandar SUV G055",
"Geolandar A/T G015",
"Geolandar G91At",
"Geolandar A/T G015",
"BlueEarth-GT AE-51",
"Geolandar CVg058",
"Geolandar A/T G015",
"Geolandar CVg058",
"BlueEarth-GT AE-51",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar H/T G056",
"Geolandar H/T G056",
"Geolandar A/T G015",
"Geolandar A/T G015",
"BlueEarth-GT AE-51",
"Geolandar A/T G015",
"Geolandar H/T G056",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Advan Sport V103S",
"BlueEarth-XT AE61",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar CVg058",
"Geolandar H/T G056",
"BlueEarth RV-02",
"BlueEarth-XT AE61",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar CVg058",
"Geolandar A/T G015",
"Geolandar CVg058",
"Geolandar A/T G015",
"Geolandar CVg058",
"Geolandar A/T G015",
"Geolandar CVg058",
"Geolandar G94BV",
"Geolandar H/T G056",
"Geolandar CVg058",
"Geolandar A/T G015",
"Geolandar CVg058",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar A/T G015",
"Geolandar H/T G056",
"Geolandar A/T G015",
"Blizzak VRX",
"Winter Maxx SJ8",
"Winter Maxx WM01",
"Winter Maxx WM01",
"Winter Maxx WM01",
"Winter Maxx WM02",
"Winter Maxx WM02",
"Dynapro i*cept RW08",
"i*cept iZ2",
"i*cept iZ2",
"i*cept iZ2",
"i*cept iZ2",
"i*cept iZ2",
"i*pike RW11",
"i*cept X",
"i*pike RS2",
"i*pike RS2",
"Premitra Ice SP3",
"Premitra Ice SP3",
"Premitra Ice SP3",
"Presa Spike MA-SLW",
"Presa SUV SS01",
"Presa SUV SS01",
"Presa SUV SS01",
"Presa SUV SS01",
"WINGUARD ice Plus",
"WINGUARD ice Plus",
"WINGUARD ice ",
"Geolandar I/T-S G073",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"iceGuard G075",
"IceGuard iG35+",
"iceGuard iG50+",
"iceGuard iG50+",
"iceGuard iG50+",
"iceGuard iG55",
"iceGuard iG55",
"iceGuard iG55",
"iceGuard iG55",
"iceGuard iG55",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG60",
"iceGuard iG65",]

let widthh = [
  225,
  225,
  215,
  195,
  225,
  215,
  175,
  185,
  175,
  185,
  175,
  185,
  185,
  195,
  185,
  215,
  225,
  195,
  205,
  205,
  195,
  205,
  205,
  205,
  205,
  215,
  195,
  205,
  215,
  215,
  175,
  215,
  195,
  215,
  215,
  225,
  225,
  215,
  225,
  225,
  215,
  225,
  215,
  225,
  215,
  235,
  215,
  225,
  235,
  215,
  265,
  225,
  215,
  225,
  225,
  275,
  245,
  275,
  225,
  215,
  265,
  265,
  235,
  215,
  265,
  235,
  225,
  215,
  275,
  225,
  225,
  235,
  265,
  225,
  265,
  235,
  265,
  285,
  265,
  265,
  235,
  225,
  285,
  235,
  275,
  285,
  275,
  205,
  275,
  175,
  185,
  215,
  175,
  185,
  285,
  175,
  175,
  205,
  205,
  225,
  215,
  245,
  185,
  205,
  185,
  195,
  205,
  205,
  225,
  215,
  225,
  255,
  175,
  185,
  225,
  265,
  215,
  225,
  225,
  275,
  285,
  225,
  235,
  235,
  255,
  265,
  285,
  235,
  255,
  265,
  275,
  275,
  285,
  265,
  205,
  215,
  215,
  195,
  195,
  265,
  235,
  265,
  175,
  175,
  185,
  205,
  205,
  225,
  205,
  215,
  225,
  215,]

  let heightt = [
    60,
    60,
    60,
    60,
    70,
    55,
    82,
    60,
    70,
    65,
    65,
    65,
    60,
    65,
    70,
    65,
    70,
    60,
    65,
    55,
    70,
    65,
    70,
    60,
    55,
    65,
    55,
    70,
    60,
    65,
    80,
    70,
    80,
    65,
    55,
    65,
    55,
    75,
    60,
    70,
    55,
    65,
    70,
    70,
    45,
    75,
    80,
    70,
    60,
    70,
    70,
    65,
    70,
    55,
    80,
    65,
    70,
    70,
    45,
    60,
    70,
    70,
    65,
    60,
    65,
    60,
    60,
    60,
    65,
    60,
    60,
    60,
    75,
    55,
    65,
    65,
    60,
    60,
    55,
    60,
    55,
    55,
    60,
    55,
    60,
    50,
    55,
    50,
    70,
    65,
    60,
    60,
    70,
    65,
    65,
    65,
    70,
    70,
    55,
    55,
    70,
    70,
    60,
    65,
    65,
    55,
    65,
    70,
    70,
    60,
    60,
    50,
    65,
    70,
    65,
    50,
    80,
    70,
    70,
    70,
    75,
    65,
    55,
    65,
    60,
    60,
    60,
    55,
    50,
    50,
    40,
    50,
    45,
    65,
    60,
    60,
    50,
    55,
    55,
    60,
    55,
    45,
    65,
    70,
    65,
    60,
    60,
    60,
    50,
    60,
    50,
    60,
  ]
  
  let radiuss = [
    "R16",
    "R18",
    "R16",
    "R15",
    "R15",
    "R17",
    "R14",
    "R14",
    "R14",
    "R14",
    "R15",
    "R15",
    "R15",
    "R15",
    "R14",
    "R15",
    "R15",
    "R15",
    "R15",
    "R16",
    "R15",
    "R16",
    "R15",
    "R16",
    "R16",
    "R15",
    "R16",
    "R15",
    "R16",
    "R16",
    "R16",
    "R16",
    "R15",
    "R16",
    "R17",
    "R17",
    "R18",
    "R15",
    "R18",
    "R15",
    "R17",
    "R17",
    "R16",
    "R16",
    "R17",
    "R15",
    "R15",
    "R16",
    "R16",
    "R15",
    "R16",
    "R17",
    "R15",
    "R17",
    "R15",
    "R17",
    "R16",
    "R16",
    "R17",
    "R17",
    "R15",
    "R16",
    "R17",
    "R17",
    "R17",
    "R18",
    "R18",
    "R17",
    "R17",
    "R18",
    "R18",
    "R18",
    "R16",
    "R18",
    "R17",
    "R18",
    "R18",
    "R18",
    "R18",
    "R18",
    "R19",
    "R18",
    "R18",
    "R19",
    "R20",
    "R20",
    "R20",
    "R17",
    "R16",
    "R14",
    "R15",
    "R16",
    "R14",
    "R14",
    "R17",
    "R14",
    "R14",
    "R15",
    "R16",
    "R17",
    "R16",
    "R16",
    "R15",
    "R15",
    "R14",
    "R15",
    "R16",
    "R15",
    "R16",
    "R17",
    "R17",
    "R19",
    "R14",
    "R14",
    "R17",
    "R20",
    "R15",
    "R16",
    "R16",
    "R16",
    "R16",
    "R17",
    "R18",
    "R18",
    "R18",
    "R18",
    "R18",
    "R19",
    "R19",
    "R20",
    "R20",
    "R21",
    "R22",
    "R17",
    "R16",
    "R16",
    "R17",
    "R15",
    "R15",
    "R18",
    "R19",
    "R21",
    "R14",
    "R14",
    "R14",
    "R15",
    "R16",
    "R16",
    "R17",
    "R17",
    "R17",
    "R17",
  ]

  let seasonn = [

"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Лето",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",
"Зима",]

let pricee = [
  5899,
  9709,
  2419,
  2419,
  4229,
  6019,
  6129,
  6229,
  6559,
  6569,
  6579,
  6869,
  6959,
  7219,
  7559,
  7569,
  7759,
  7789,
  7959,
  8289,
  8559,
  9209,
  9209,
  9329,
  9939,
  9969,
  10719,
  10909,
  11059,
  11169,
  11469,
  12109,
  12249,
  12279,
  12659,
  12819,
  12840,
  12969,
  13099,
  13269,
  13289,
  13479,
  13599,
  13669,
  13719,
  13869,
  13949,
  14359,
  14539,
  14999,
  15259,
  15269,
  15469,
  15739,
  15879,
  15939,
  16059,
  16189,
  16189,
  16379,
  16419,
  16589,
  16869,
  17029,
  17249,
  17249,
  17329,
  17349,
  17409,
  17429,
  18029,
  18129,
  18299,
  18439,
  18549,
  18559,
  19429,
  19489,
  19819,
  19919,
  20289,
  20739,
  21859,
  25029,
  29669,
  29679,
  34649,
  10779,
  15239,
  4949,
  6599,
  8889,
  5589,
  6089,
  4449,
  5389,
  5419,
  8329,
  8119,
  4129,
  5299,
  14209,
  7039,
  7539,
  3389,
  4839,
  5809,
  6869,
  7499,
  7259,
  7379,
  12219,
  4479,
  5169,
  9069,
  7089,
  12999,
  17369,
  6499,
  20409,
  17929,
  15479,
  19829,
  18519,
  19699,
  20349,
  20429,
  19609,
  24129,
  28019,
  21969,
  33669,
  31209,
  5079,
  11109,
  11939,
  16399,
  10419,
  3569,
  16579,
  21479,
  32299,
  7359,
  7479,
  8239,
  10429,
  12429,
  14179,
  16139,
  16879,
  17309,
  19199,
]
 */