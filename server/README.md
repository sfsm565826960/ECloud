# ECloud-Server
云业务管理平台-服务端

# Note
* 使用HTTPS需要创建SSL自建证书
```
openssl genrsa -out localhost.key 2048
openssl req -new -x509 -key localhost.key -out localhost.cert -days 3650 -nodes
```