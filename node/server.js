var express = require("express");
var app = express();
var port = 3000;
var ip = '10.0.0.4';

app.set('views', __dirname + '/views');
app.set('view engine', "jade");
app.engine('jade', require('jade').__express);

app.get("/", function(req, res){
    res.render("page");
});

app.use(express.static(__dirname + '/static'));
 
// var io = require('socket.io').listen(app.listen(port, ip));
// io.sockets.on('connection', function (socket) {
//     socket.emit('message', { message: 'welcome to the chat' });
//     socket.on('send', function (data) {
//         io.sockets.emit('message', data);
//     });
// });
app.listen(port,ip);
console.log("Listening on port " + port);