<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/8 0008
  Time: 22:08
  To change this template use File | Settings | File Templates.

  session细节：
  1 客户端关闭以后，session不是同一个，如果要存成同一个，可借助cookie，cookie为jsessionid，设置最大存活时间让session持久化保存
  2 服务器关掉，两次获取的session不是同一个，
  session的钝化：在服务器正常关闭之前，将session序列化（存储到）到硬盘上。
  session的活化：在服务器启动后，将session文件转化到内存中的内存对象即可。

  3 session的实效时间（什么时候被销毁）
  3.1 服务器被关闭
  3.2 session调用方法invaliddate
  3.3 默认失效的时间是30分钟（可以选择性的修改）

  session的特点：
  1 用于存储一次会话的多次请求的数据，存在服务器端
  2 session可以存储任意类型任意大小的数据

  session和cookie的区别：
  session存储数据在服务器端，cookie在客户端
  session存储没有大小限制
  session数据安全，cookie相对不安全

  案例：验证码
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sessionDetail</title>

</head>
<body>

</body>
</html>
