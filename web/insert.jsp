<%--
  Created by IntelliJ IDEA.
  User: 胡家家
  Date: 2023/10/19
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增用户信息</title>
    <script>
        /**
         * 判断两次输入的密码是否相等
         * @returns {boolean}
         */
        function confirmPassword() {
            var password = document.getElementById("password").value;
            var confirm_password = document.getElementById("confirm_password").value;

            if (password !== confirm_password) {
                document.getElementById("pwd_message").innerHTML = "两次输入的密码不一致，请重新输入并核验密码";
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h1>This is the insert page.(o-o)!</h1>
<form action="insert" method="post" onsubmit="return confirmPassword()">
    <table border="1" align="center">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password" id="password"></td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td><input type="password" id="confirm_password"></td>
            <p id="pwd_message"></p>
        </tr>
        <tr>
            <td>邮箱号</td>
            <td><input type="text" name="email" id="email"></td>
        </tr>
        <tr>
            <%--      colspan 跨列 --%>
            <td align="center" colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
