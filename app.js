const express = require('express')
require("dotenv").config();
var {Pool} = require('pg');
const { Client } = require('pg')
// const pool = new Pool({
//     user: 'postgres',
//     host: 'localhost',
//     database: 'postgres',
//     password: 'postgres',
//     port: 5432,
//   })
const connectionString = 'postgresql://postgres:postgres@localhost:5432/postgres'
// set DATABASE_URL=postgres://$('postgresql://postgres:postgres@localhost:5432/postgres')
const pool = new Client({
connectionString: connectionString
})

pool.connect()
//   var conString = "postgres://postgres:postgres@localhost:5432/postgres";

//   var pool = new Pool(conString);
//   pool.connect();

app = express()

app.set('view engine', 'ejs')

app.get('/', function(req, res, next) {
    pool.query('select site_name from "ajk plantation 2020_21" limit 1')
    .then(function(results) { 
        console.log('results:', results.rows);
        res.render('index',{data:results.rows[0]})
    })
    
})

app.listen(process.env.PORT, function() {
    console.log('listening on port ' + process.env.PORT);
})