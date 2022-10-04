const express = require('express')
require("dotenv").config();

app = express()

app.get('/', function(req, res, next) {
    res.send('Welcome')
})

app.listen(process.env.PORT, function() {
    console.log('listening on port ' + process.env.PORT);
})