<%--
  Created by IntelliJ IDEA.
  User: LD
  Date: 2019/5/17
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科室介绍</title>
    <link rel="stylesheet" href="/plugin/layui/css/layui.css" />
    <script type="text/javascript" src="/js/jquery-3.4.0.js"></script>
    <script src="/plugin/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row" style="height: 10%">
        <div class="layui-col-md9">
            <div class="grid-demo grid-demo-bg1">
                <img src="/images/homeImg.PNG" style="width: 40px;height: 40px;float: left">
                <h1 style="float: left">合肥工业大学医院</h1>
            </div>
        </div>
        <div class="layui-col-md3">
            <div class="grid-demo grid-demo-bg1">
                <i class="layui-icon layui-icon-username"></i>
                欢迎您：<span id="userName">${userName}</span>
                <a href="javascript:exitLogin();">退出登录</a>
            </div>
        </div>
    </div>
    <div class="layui-row" style="margin-top: 6px;height: 10%">
        <ul class="layui-nav">
            <li class="layui-nav-item layui-this"><a href="javascript:void(0);">首页</a></li>
            <li class="layui-nav-item"><a href="load">科室介绍</a></li>
            <li class="layui-nav-item"><a href="">医生介绍</a></li>
            <li class="layui-nav-item"><a href="">预约挂号</a></li>
            <li class="layui-nav-item"><a href="">挂号信息</a></li>
            <li class="layui-nav-item"><a href="">看诊缴费</a></li>
            <li class="layui-nav-item"><a href="">病例信息</a></li>
            <li class="layui-nav-item"><a href="">药单信息</a></li>
            <li class="layui-nav-item"><a href="">通知公告</a></li>
            <li class="layui-nav-item"><a href="">健康资讯</a></li>
        </ul>
    </div>
    <div class="layui-row" style="margin-top: 24px;height: 40%">
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">卡片面板</div>
                <div class="layui-card-body">
                    卡片式面板面板通常用于非白色背景色的主体内<br>
                    从而映衬出边框投影
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">卡片面板</div>
                <div class="layui-card-body">
                    结合 layui 的栅格系统<br>
                    轻松实现响应式布局
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element','carousel'], function(){
        var element = layui.element;
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1',
            width: '100%', //设置容器宽度
            arrow: 'always', //始终显示箭头
            autoplay: true
            //,anim: 'updown' //切换动画方式
        });
    });

    //加载页面
    function loadPage(url){
        $("#htmlPage").attr("src",url);
    }

    //退出登录
    function exitLogin() {
        window.location.replace("/loginRegister/goLoginView")
    }
</script>
</body>
</html>
