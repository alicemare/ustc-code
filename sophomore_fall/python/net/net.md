### python网络编程

1. TCP/IP

   > internet发展就是规定的一套协议来连接全球的电脑

   1.  几个重要概念

      > IP地址实际上是一个32位整数（称为IPv4），以字符串表示的IP地址如`192.168.0.1`实际上是把32位整数按8位分组后的数字表示，目的是便于阅读。	

      > IPv6地址实际上是一个128位整数，它是目前使用的IPv4的升级版，以字符串表示类似于`2001:0db8:85a3:0042:1000:8a2e:0370:7334`

      * IP协议负责把数据从一台计算机通过网络发送到另一台计算机。数据被分割成一小块一小块，然后通过IP包发送出去。由于互联网链路复杂，两台计算机之间经常有多条线路，因此，路由器就负责决定如何把一个IP包转发出去。IP包的特点是按块发送，途径多个路由，但不保证能到达，也不保证顺序到达。

      * TCP协议则是建立在IP协议之上的。TCP协议负责在两台计算机之间建立可靠连接，保证数据包按顺序到达。TCP协议会通过握手建立连接，然后，对每个IP包编号，确保对方按顺序收到，如果包丢掉了，就自动重发。

      * 多常用的更高级的协议都是建立在TCP协议基础上的，比如用于浏览器的HTTP协议、发送邮件的SMTP协议等。

      * 一个TCP报文除了包含要传输的数据外，还包含源IP地址和目标IP地址，源端口和目标端口。端口号决定发给哪个网络进程

      * 每个网络程序都向操作系统申请唯一的端口号，这样，两个进程在两台计算机之间建立网络连接就需要各自的IP地址和各自的端口号。

        > 对于服务器，提供什么样的服务，端口号就必须固定下来。由于我们想要访问网页，因此提供网页服务的服务器必须把端口号固定在`80`端口，因为`80`端口是Web服务的标准端口。其他服务都有对应的标准端口号，例如SMTP服务是`25`端口，FTP服务是`21`端口，等等。端口号小于1024的是Internet标准服务的端口，端口号大于1024的，可以任意使用。

2. TCP编程

   > socket 套接字?? >_>这么诡异的翻译就不要管了吧...
   >
   > > socket指打开了一个网络连接  而打开一个Socket需要知道目标计算机的IP地址和端口号，再指定协议类型即可。

   客户端 -> TCP(协议) -> 服务端

3. UDP编程