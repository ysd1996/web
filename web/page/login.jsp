<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/8 0008
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<form action="http://localhost:8080/login" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>

        <tr>
            <td>密码</td>
            <td><input type="password" name="password"></td>
        </tr>

        <tr>
            <td>验证码</td>
            <td><input type="text" name="checkCode"></td>
        </tr>

        <tr>
            <td colspan="2"><img src="http://localhost:8080/checkCodeServlet"></td>
        </tr>

        <tr>
            <td colspan="2"><input type="submit" value="登录"></td>
        </tr>

    </table>


</form>
</body>
</html>
