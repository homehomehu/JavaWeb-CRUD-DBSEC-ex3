<%--
  Created by IntelliJ IDEA.
  User: 胡家家
  Date: 2023/10/18
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--使用jstl核心标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>现实全部用户信息数据</title>
    <script>
        function confirmDeleteById(id){
            if(confirm("确定要将该用户的信息删除吗？")){
                // 把url换成/delete
                location.href = 'delete?id=' + id;
            }
        }
    </script>
    <style>
        div{
            text-align: center;
        }
    </style>
</head>

<body>
<h1>This is the information page of all users.</h1>

<div>
    <table align="center" border="10">
        <tr>
            <td>ID号</td>
            <td>用户名</td>
            <td>密码</td>
            <td>邮箱号</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${usersList}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.username}</td>
                <td>${u.password}</td>
                <td>${u.email}</td>
                <td>
                    <a href="selectById?id=${u.id}">修改用户信息</a>
                    <a href="#" onclick="confirmDeleteById(${u.id});">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div>
    <a href="insert.jsp">点击添加用户信息</a>
</div>

</body>
</html>
