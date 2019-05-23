<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>登录页面</title>
    <script type="text/javascript" src="/js/jquery-3.4.0.js"></script>
    <script type="text/javascript" src="/js/jquery.serializeObject.js"></script>
</head>
<body background="/images/background.jpg">
<div align="center">
    <h1>${systemName}</h1>
    <form id="login" action="/loginRegister/login" method="post">
        <label>用户名：</label>
        <label>
            <input type="text" name="loginName">
        </label><br>
        <label>密&emsp;码：</label>
        <label>
            <input type="password" name="password">
        </label><br>
        <label>
            <button type="submit" name="login" >登录</button><!-- onclick="loginSystem()" -->
            <button type="reset" name="reset">重置</button>
        </label>
    </form>
    <button type="button" onclick="register()">注册</button>
</div>
</body>
<script type="text/javascript">
    // function loginSystem() {
    //     var url = "/loginRegister/login";
    //     var params = $("#login").serializeObject();
    //     $.post(url,params,function (result) {
    //         debugger
    //     });
    // }

    $(function () {
        var data = $("#systemName").val();
        var val = eval("("+data+")");
        console.log(val);
    });

    function register() {
        window.location.replace("/loginRegister/goRegisterView")
    }

</script>
</html>