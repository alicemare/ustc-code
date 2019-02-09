var net = require('net');
//创建一个TCP客户端也即只需一个连接TCP客户端的socket对象即可
var client = new net.Socket();

client.connect(18001,'127.0.0.1',function(){
	console.log('connect the server');
	//socket对象有write方法
	client.write('message from the client');
});
//监听socket对象的data,error,close,end等事件
client.on('data',function(data){
	console.log("the data of the server"+data.toString());
});
client.on('end',function(){
	console.log('data end');
});
