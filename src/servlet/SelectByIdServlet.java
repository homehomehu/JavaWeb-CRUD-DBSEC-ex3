package servlet;

import dao.UserDao;
import entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectById")
public class SelectByIdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int id = Integer.valueOf(request.getParameter("id"));

        UserDao ud = new UserDao();
        User user = ud.selectById(id);
        request.setAttribute("user_attribute", user);
        request.getRequestDispatcher("update.jsp").forward(request,response);
    }
}
