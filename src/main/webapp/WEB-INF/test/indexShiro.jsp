<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        div.loginDiv{
            text-align: left;
        }
       /* div.errorInfo{
            color:red;
            font-size:0.65em;
        }*/
    </style>
</head>
<body>
<div class="workingroom">
    <div class="loginDiv">

        <c:if test="${empty subject.principal}">
            <a href="login">登录</a><br>
        </c:if>
        <c:if test="${!empty subject.principal}">
            <span class="desc">你好，${subject.principal}，</span>
            <a href="doLogout">退出</a><br>
        </c:if>

        <a href="listProduct">查看产品</a><span class="desc">(登录后才可以查看) </span><br>
        <a href="deleteProduct">删除产品</a><span  class="desc">(要有产品管理员角色, zhang3没有，li4 有) </span><br>
        <a href="deleteOrder">删除订单</a><span class="desc">(要有删除订单权限, zhang3有，li4没有) </span><br>
    </div>
</div>
</body>
</html>