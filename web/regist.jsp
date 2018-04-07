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
                var mail = $(this).val();
                $.get("regist.do", {mailname: mail}, function (data) {
                    if (data == "YES") {
                        $("#mail_name").next("span").remove();
                        $("#mail_name").after("<span style='color: orangered'>邮箱可以使用</span>");
                    } else {
                        $("#mail_name").next("span").remove();
                        $("#mail_name").after("<span style='color: orangered'>邮箱不可使用</span>");
                    }
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
