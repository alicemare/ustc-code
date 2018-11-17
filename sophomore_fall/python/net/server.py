import socket
# 监听本地的地址和端口,绑定到本地则客户端必须同时在本体运行才能连接
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind(('127.0.0.1',9999))
# 绑定端口,127.0.0.1 为本地地址
s.listen(5)
# 指定等待连接的最大数量
print("waiting for connection...")

while True:
    # 接受一个新连接
    sock.addr=s.accept()
    # 创建新连接来处理TCP连接
    t=threading.Thread(target=tcplink,args=(sock,addr))
    t.start()

def tcplink(sock, addr):
    print('Accept new connection from %s:%s...' % addr)
    sock.send(b'Welcome!')
    while True:
        data = sock.recv(1024)
        time.sleep(1)
        if not data or data.decode('utf-8') == 'exit':
            break
        sock.send(('Hello, %s!' % data.decode('utf-8')).encode('utf-8'))
    sock.close()
    print('Connection from %s:%s closed.' % addr)
