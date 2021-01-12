<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: B0086834
  Date: 2021/1/12
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jstl标签</title>
</head>
<body>

<%--

    c:if标签：
        1.属性：
            test 必须属性，接受boolean表达式
                如果表达式为true，则显示if标签体内容，反之，不显示
            一般情况下，test属性值会结合el表达式一起使用
       2.注意：c：if标签没有else，想要else情况，则可以再定义一个c:if标签
--%>

<c:if test="true">
    <h1>我是真的！</h1>
</c:if>
<br>
<%
    List list = new ArrayList();
    list.add("sss");
    request.setAttribute("list",list);
%>
<c:if test="${not empty list}">
    遍历结合。。。。
</c:if>

</body>
</html>
