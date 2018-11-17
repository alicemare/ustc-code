import socket
# 创建一个socket
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
# AF_INET:IPV4
# AF_INET6: IPV6
# SOCK_STREAM:面向流的TCP协议
s.connect(('www.sina.com.cn',80))
# 80 为服务器标准端口

s.send(b'GET / HTTP/1.1\r\nHost: www.sina.com.cn\r\nConnection: close\r\n\r\n')
buffer = []
while True:
    # 每次最多接收1k字节:
    d = s.recv(1024)
    if d:
        buffer.append(d)
    else:
        break
data = b''.join(buffer)
s.close()

# 写入文件
header, html = data.split(b'\r\n\r\n', 1)
print(header.decode('utf-8'))
# 把接收的数据写入文件:
with open('sina.html', 'wb') as f:
    f.write(html)
