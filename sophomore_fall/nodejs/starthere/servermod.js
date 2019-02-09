//server.js的模块化
var http =  require("http");
function start(){

	http.createServer(function (request,response){
		console.log("Require received");
		response.writeHead(200,{"Content-Type":"text/plain"});
		response.write("Hi!");
		response.end();
	}).listen(8888);

	console.log("server is running");
}


exports.start = start;
