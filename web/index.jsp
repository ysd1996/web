<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/5 0005
  Time: 22:21
  To change this template use File | Settings | File Templates.

  jsp本质上就是一个servlet
  java server pages:java服务器端页面
    可以理解为：一个特殊的页面，其中既可以指定定义html标签，又可以定义java代码
    用于简化书写！

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面接口</title>
</head>
<body>
<div>
    <a href="http://localhost:8080/download?filename=1.jpg">下载图片</a>
    <br>
    <a href="http://localhost:8080/cookieTest">cookieTest接口</a>
    <br>
    <a href="http://localhost:8080/essionDemo1">Session测试页面</a>
</div>

</body>
</html>
