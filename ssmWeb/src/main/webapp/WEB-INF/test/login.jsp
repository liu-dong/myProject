<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        span.desc{
            margin-left:20px;
            color:gray;
        }
        div.workingroom{
            margin:200px auto;
            width:400px;
        }
        div.workingroom a{
            display:inline-block;
            margin-top:20px;
        }
        /*div.loginDiv{
            text-align: left;
        }*/
        div.errorInfo{
             color:red;
             font-size:0.65em;
         }
    </style>
</head>
<body>

<div class="workingroom">
    <div class="errorInfo">${error}</div>
    <form action="login" method="post">
        账号： <input type="text" name="name"> <br>
        密码： <input type="password" name="password"> <br>
        <br>
        <input type="submit" value="登录">
        <br>
        <br>
        <div>
            <span class="desc">账号:zhang3 密码:12345 角色:admin</span><br>
            <span class="desc">账号:li4 密码:abcde 角色:productManager</span><br>
        </div>
    </form>
</div>
</body>
</html>
