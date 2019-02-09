# TCP

-----
2018.11.22
tcp协议建立在网络通信的传输层
>OSI参考模型划分:物理层,数据链路层,网络层,传输层,会话层,表示层和应用层

在nodejs中创建tcp服务器使用的是net模块

>server:net.createServer([options][,
connectionListener])

服务器通过socket和客户端交互
客户端即为socket对象通过new Socket()创建

socket对象有on error end等事件