package cn.itcast.login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author ysd
 * @Description: ${todo}
 * @date 2021/1/8 000823:00
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //设置request的编码格式,与页面编码的格式一致
        request.setCharacterEncoding("utf-8");
        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String checkCode = request.getParameter("checkCode");

        //获取session以及验证码
        HttpSession session = request.getSession();
        String randomcodekey = (String)session.getAttribute("randomcode_key");
        //验证验证码是否正确
        if (randomcodekey.equalsIgnoreCase(checkCode)){
            //忽略大小写比较
            //正确，再判断用户名和密码
            //判断用户名和密码
            if ("zhangsan".equals(username) && "123".equals(password)){
                //成功
                //存储用户信息
                session.setAttribute("user",username);

                //重定向到页面
                response.sendRedirect(request.getContextPath()+"/page/success.jsp");
            }else {
                //失败
                request.setAttribute("login_error","用户名或密码错误");
                //转发
                request.getRequestDispatcher("/page/login.jsp").forward(request,response);
            }


        }else {
            //验证码不一致
            request.setAttribute("cc_error","验证码不正确");
            //转发
            request.getRequestDispatcher("/page/login.jsp").forward(request,response);
        }


        /*response.setContentType("text/html;charset=utf-8");
        response.getWriter().write("欢迎登录！");*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
