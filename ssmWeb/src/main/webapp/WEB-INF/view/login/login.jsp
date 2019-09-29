<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8">
<%--    <meta name="description" content="${webProperties.systemName}">--%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>登录页面</title>
    <link rel="stylesheet" href="${ctx}/plugin/layui/css/layui.css" />
    <script type="text/javascript" src="${ctx}/js/jquery-3.4.0.js"></script>
    <script type="text/javascript" src="${ctx}/js/jquery.serializeObject.js"></script>
    <script src="${ctx}/plugin/layui/layui.js"></script>
    <style>
        /*让背景图片自适应铺满全屏，内容居中*/
        html{
            height: 100%;
        }
        body{
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
            background: url(/images/322459.jpg) no-repeat;
            background-size: 100% 100%;
            position: absolute;
            text-align: center;
        }
        /*让背景图片自适应铺满全屏，内容居中*/

        .fontSize{
            font-size: 40px;
            letter-spacing: 6px;
            font-weight: 800;
        }
    </style>
</head>
<body>
<div>
    <div style="padding-top: 100px;">
        <h1 class="fontSize">个人信息管理系统</h1>
    </div>
    <div style="padding-top: 60px;">
        <form id="loginForm" action="${ctx}/loginRegister/login" method="post" class="layui-form">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="font-size: 16px;font-weight: 600">用户账号：</label>
                    <div class="layui-input-inline">
                        <label>
                            <input type="text" id="username" name="username" autocomplete="off" placeholder="请输入标题" class="layui-input">
                        </label>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="font-size: 16px;font-weight: 600">密&emsp;&emsp;码：</label>
                    <div class="layui-input-inline">
                        <label>
                            <input type="password" id="password" name="password" autocomplete="off" placeholder="请输入标题" class="layui-input">
                        </label>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="font-size: 16px;font-weight: 600">用户类型：</label>
                    <div class="layui-input-inline">
                        <label>
                            <select name="userType"  class="layui-input">
                                <option value="">请选择用户类型</option>
                                <option value="0">超级管理员</option>
                                <option value="1">管理员</option>
                                <option value="2">普通用户</option>
                            </select>
                        </label>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline" style="text-align: left;">
                    <label class="layui-form-label" style="font-size: 14px;font-weight: 600;margin-left: -180px;"><a onclick="foundPassword()" style="color: #007DDB;">找回密码</a></label>
                </div>
            </div>
            <div class="layui-form-item">
                <label>
                    <button type="button" name="login" onclick="loginSystem()" class="layui-btn layui-btn-normal">登录</button><!--  -->
                    <button type="button" id="register" class="layui-btn layui-btn-warm" style="margin-left: 48px;">注册</button>
                </label>
            </div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {

    });

    function loginSystem(){
        let username = $("#username").val().trim();
        let password = $("#password").val().trim();
        if (!username){
            alert("账号不能为空");
            $("#username").focus();
            return;
        }
        if (!password){
            alert("密码不能为空");
            $("#password").focus();
            return;
        }
        $("loginForm").submit();
    }

    $("#register").click(function(){
        layer.open({
            type: 2,
            title: '个人信息注册',
            area: ['60%', '80%'],
            content: ['/loginRegister/goRegisterView','no']
        });
    });

    function foundPassword() {
        alert("功能建设中！！！");
        alert(layer);
    }
</script>
</html>