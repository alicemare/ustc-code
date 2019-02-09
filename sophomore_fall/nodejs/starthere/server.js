var http = require("http");

http.createServer(function(request, response) {
  console.log("received.");
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.write("Hello World");
  response.end();
}).listen(8888);
