const express = require('express')
require("dotenv").config();

app = express()

app.set('view engine', 'ejs')

app.get('/', function(req, res, next) {
    res.render('index')
})

app.listen(process.env.PORT, function() {
    console.log('listening on port ' + process.env.PORT);
})