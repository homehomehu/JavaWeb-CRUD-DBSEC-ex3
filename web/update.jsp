<%--
  Created by IntelliJ IDEA.
  User: 胡家家
  Date: 2023/10/19
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新现有用户信息</title>
</head>
<body>
<h1>This is the update page.I am soooo sleepy!</h1>
<form action="update" method="post">
    <table border="1" align="center">
        <input type="hidden" name="id" value="${user_attribute.id}">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="name" value="${user_attribute.username}"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" name="password" value="${user_attribute.password}"></td>
        </tr>
        <tr>
            <td>邮箱号</td>
            <td><input type="text" name="email" value="${user_attribute.email}"></td>
        </tr>
        <tr >
            <td align="center" colspan="2">
                <input type="submit" value="修改">
                <input type="reset" value="回退" onclick="history.back()">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
