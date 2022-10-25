package servelet;

import util.DaoFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stuno = request.getParameter("stuno");
        String password = request.getParameter("password");
        String stuname = DaoFactory.getUserDaoImpl().getUser(stuno,password);
        if(stuname != null) {
            //登陆成功
            request.setAttribute("stuname",stuname);
            request.getSession().setAttribute("msg","");
            //页面的跳转 第一种方式 转发
            request.getRequestDispatcher("result.jsp").forward(request,response);

            //第二种方式 重定向跳转 不能携带数据
            //response.sendRedirect("index.jsp");
        } else {
            //登录失败
            request.getSession().setAttribute("msg","学号或密码有误，请重新输入！");
            response.sendRedirect("index.jsp");
        }
    }
}
