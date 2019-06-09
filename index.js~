#var express = require('express');
#var app = express();
#
#app.use(express.static('build'));
#
#app.listen(process.env.PORT, () => {
#    console.log('uhull')
#})

var express = require('express');
var app = express();

//setting middleware
app.use(express.static(__dirname + 'build')); //Serves resources from public folder


var server = app.listen(process.env.PORT);
