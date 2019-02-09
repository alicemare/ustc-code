//创建http服务器
var http = require('http');
var fs = require('fs');

var server = http.createServer(function(req,res){
    //响应的头部
    res.writeHead(200,{
        'content-type':'text/html'
        //conten-type:表示客户端或服务器传输数据的类型
    })//JSON
    var data = fs.readFileSync('./index.html');
    //读取文件数据
    res.write(data);
    res.end();
});
    //服务器端口
server.listen(3000,function(){
    console.log('listening port 3000');
});
