//引入包
var net = require('net');
//创建服务器
var server = net.createServer(function(socket){
	//获取地址信息(server)
	var address = server.address();
	var message = 'client ,the server address is '+JSON.stringify(address);
	//发送数据
	socket.write(message,function(){
		var writeSize = socket.bytesWritten;
		console.log(message+'has end');
		console.log('the size of message is'+writeSize);
	});
	socket.on('data',function(data){
		console.log(data.toString());
		var readSize = socket.bytesRead;
		console.log('the size of data is '+readSize);
	});
	//本地端口
	console.log('LocalPort:'+socket.localPort);
	//本体ip
	console.log('LocalIP:'+socket.localAddress);
	//远程端口
	console.log('remotePort'+socket.remotePort);
	//远程IP协议簇
	console.log('remoteFamily:'+socket.remoteFamily);
	//远程IP地址
	console.log('remoteAddress:'+socket.remoteAddress);
});

//设置监听端口
server.listen(18001,function(){
	console.log('server is listening');
});

