//创建http服务器
var http = require('http');
//这个http server实现将一行字符串发送给浏览器!
var server = http.createServer(function(req,res){
    //响应的头部
    res.writeHead(200,{
        'content-type':'text/plain'
    })//JSON
    //设置响应数据
    res.end('Hello,node.js!');
});
    //服务器端口
server.listen(3000,function(){
    console.log('listening port 3000');
});
