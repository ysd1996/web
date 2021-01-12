package cn.itcast.download;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * @author ysd
 * @Description: ${todo}
 * @date 2021/1/5 000522:22
 */
@WebServlet( "/download")
public class DownloadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //获取请求参数得到文件名称
        String filename = request.getParameter("filename");

        //得到文件的真是路径
        ServletContext servletContext = this.getServletContext();
        String realPath = servletContext.getRealPath("/static/"+filename);

        //用字节流关联
        FileInputStream fis = new FileInputStream(realPath);

        //得到文件类型
        String mimeType = servletContext.getMimeType(filename);
        response.setHeader("content-type",mimeType);

        //设置响应头打开方式
        response.setHeader("content-disposition","attachment;filename="+filename);

        ServletOutputStream outputStream = response.getOutputStream();
        int len = 0;
        byte[] buff = new byte[1024 * 8];
        while ((len = fis.read(buff)) != -1){
            outputStream.write(buff,0,len);
        }

        fis.close();
        System.out.println("启动完成！");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
