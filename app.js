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
const connectionString = 'postgresql://postgres:postgres@database-1.c6am0oww5fuv.ap-northeast-1.rds.amazonaws.com:5432/postgres'
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
    pool.query('select site_name from "ajk_plantation_2020_21" limit 1')
    .then(function(results) { 
        console.log('results:', results.rows);
        res.render('index',{data:results.rows[0]})
    })
    
})

app.listen(process.env.PORT, function() {
    console.log('listening on port ' + process.env.PORT);
})


// pg_dump.exe -h "localhost" -U "postgres" -p 5432 -d "postgres" -t "public.ajk_forest_divisions" | psql.exe -h "database-1.c6am0oww5fuv.ap-northeast-1.rds.amazonaws.com" -p 5432 -U "postgres" -d "postgres" -W
// DATABASE_URL
// postgresql://postgres:postgres@database-1.c6am0oww5fuv.ap-northeast-1.rds.amazonaws.com:5432/postgres

// heroku config:set DATABASE_URL=postgresql://postgres:postgres@database-1.c6am0oww5fuv.ap-northeast-1.rds.amazonaws.com:5432/postgres --app nodeherokutest1
// heroku config:set KEY=VALUE --app <project-name>

// psql postgres -h database-1.c6am0oww5fuv.ap-northeast-1.rds.amazonaws.com -p 5432 -U postgres