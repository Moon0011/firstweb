<%--
  Created by IntelliJ IDEA.
  User: weihu
  Date: 2018/4/6
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script src="js/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $("#mail_name").blur(function () {
                alert("mail blur");
                var mail = $(this).val();
                $.get("regist.do", {mailname: mail}, function (data) {
                    alert("12312313");
                });
            });
        });
    </script>
</head>
<body>
<table>
    <tr>
        <td>邮箱名：</td>
        <td>
            <input id="mail_name" type="text"/>
            <span></span>
        </td>
    </tr>
    <tr>
        <td>登录密码：</td>
        <td>
            <input id="login_password" type="password"/>
            <span></span>
        </td>
    </tr>
    <tr>
        <td><input type="submit" onclick="return checkLogin();"/></td>
    </tr>
</table>
</body>
</html>
