package servlet;

import dao.UserDao;
import entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/insert")
public class InsertServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        User user = new User();
        user.setUsername(name);
        user.setPassword(password);
        user.setEmail(email);

        //快捷键是ctrl+alt+v
        UserDao ud = new UserDao();
        //调用添加接口
        int count = ud.insert(user);
        String str=null;
        if(count>0){
            str="添加新用户信息成功";
        }else{
            str="添加新用户信息失败";
        }

        PrintWriter out = response.getWriter();
        out.print("<script>");
        out.print("alert('" +str+ "');");//漏了一个分号
        out.print("location.href='selectAll'");
        out.print("</script>");
        out.close();
    }
}
