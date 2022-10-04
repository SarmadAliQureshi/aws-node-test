const express = require('express')
require("dotenv").config();
var {Pool} = require('pg');
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: 'postgres',
    port: 5432,
  })

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