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
        function checkLogin() {
            var username = $.trim($("#login_name").val());
            var pwd = $.trim($("#login_password").val());
            if (username == "") {
                $("#login_name").next("span").html("<font color='red'>*用户名不能为空</font>");
                return false;
            } else {
                $("#login_name").next("span").html();
            }
            if (pwd == "") {
                $("#login_password").next("span").html("<font color='red'>*密码不能为空</font>");
                return false;
            } else {
                $("#login_password").next("span").html();
                alert("登录成功！！")
                return true;
            }
        }
    </script>
</head>
<body>
<table>
    <tr>
        <td>登录名：</td>
        <td>
            <input id="login_name" type="text"/>
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
