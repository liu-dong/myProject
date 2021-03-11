<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>注册页面</title>
</head>
<body>
<div align="center">
    <h1>用户信息注册</h1>
    <form action="/loginRegister/register" method="post">
        <label>姓名&emsp;：</label>
        <label>
            <input type="text" name="username" id="username">
        </label><br>
        <label>用户名：</label>
        <label>
            <input type="text" name="loginName" id="loginName">
        </label><br>
        <label>密码&emsp;：</label>
        <label>
            <input type="password" name="password" id="password">
        </label><br>
        <label>性别&emsp;：</label>
        <label>
            男<input type="radio" name="sex" value="0">
            女<input type="radio" name="sex" value="1">
        </label><br>
        <label>年龄&emsp;：</label>
        <label>
            <input type="text" name="age" id="age">
        </label><br>
        <input type="submit" name="save" value="保存">
    </form>
</div>
</body>
</html>