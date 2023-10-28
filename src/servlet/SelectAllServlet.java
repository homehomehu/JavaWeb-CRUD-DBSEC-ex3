package servlet;

import dao.UserDao;
import entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectAll")
public class SelectAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        UserDao ud = new UserDao();
        List<User> users = ud.selectAll();

        // 属性usersList的值为users
        request.setAttribute("usersList", users);

        // 将当前的 request 和 response 对象传递给名为 "selectAll.jsp" 的JSP页面。
        // 这会导致控制权从当前Servlet转移到 "selectAll.jsp" 页面，
        // 且 "selectAll.jsp" 可以处理该请求并生成响应
        // Dispatch是派遣、转发的意思
        // **千万要记得！！！Java是大小写敏感** 的呜呜呜呜呜呜，因为你之前把selectAll.jsp文件命名成selectALL.jsp文件了所以debug了一晚上+一上午
        request.getRequestDispatcher("selectAll.jsp").forward(request, response);
    }
}
