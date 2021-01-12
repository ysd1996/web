<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: B0086834
  Date: 2021/1/8
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>

<%

    //设置响应题消息的数据格式
   // response.setContentType("text/html;charset=utf-8");
    boolean flage = false;
    //获取所有的cookie
    Cookie[] cookies = request.getCookies();
    //便利所有cookies
    if (cookies != null && cookies.length > 0) {
        for (Cookie cookie : cookies) {
            //获取cookie的名称
            String name = cookie.getName();
            //判断名称是否是lasttime
            if ("lastTime".equals(name)) {
                flage = true;
                //有该cookie，不是第一次访问
                //获取Cookie的value，时间
                String value = cookie.getValue();
                //URL解码
                value = URLDecoder.decode(value,"utf-8");
                response.getWriter().write("欢迎回来，您上次访问的时间是：" + value);

                //设置cookie的value
                //获取当前时间的字符串，重新设置cookie的值，重新发送cookie
                Date date = new Date();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                String str_date = simpleDateFormat.format(date);
                //URL编码
                str_date= URLEncoder.encode(str_date,"utf-8");
                //
                cookie.setValue(str_date);
                //设置cookie的存活时间
                cookie.setMaxAge(60 * 60 * 24 * 30);
                response.addCookie(cookie);



                break;
            }

        }
    }

    if (cookies == null || cookies.length == 0 || flage == false){
        //设置cookie的value
        //获取当前时间的字符串，重新设置cookie的值，重新发送cookie
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String str_date = simpleDateFormat.format(date);
        //URL编码
        str_date=URLEncoder.encode(str_date,"utf-8");

        //
        Cookie cookie = new Cookie("lastTime",str_date);
        //cookie.setValue(str_date);
        //设置cookie的存活时间
        cookie.setMaxAge(60 * 60 * 24 * 30);
        response.addCookie(cookie);

        //获取Cookie的value，时间
        String value = cookie.getValue();
        //URL解码
        value = URLDecoder.decode(value,"utf-8");
        response.getWriter().write("欢迎登陆");
    }



%>

</body>
</html>
