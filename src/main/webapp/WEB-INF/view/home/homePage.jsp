<%--
  Created by IntelliJ IDEA.
  User: LD
  Date: 2019/5/11
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="/plugin/layui/css/layui.css" />
    <script type="text/javascript" src="/js/jquery-3.4.0.js"></script>
    <script src="/plugin/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row" style="height: 10%">
        <div class="layui-col-md9">
            <div class="grid-demo grid-demo-bg1">
                <h1><i class="layui-icon layui-icon-add-1" style="font-size: 30px; color: #FF2311;"></i>合肥工业大学医院</h1>
            </div>
        </div>
        <div class="layui-col-md3">
            <div class="grid-demo grid-demo-bg1">
                <i class="layui-icon layui-icon-username"></i>
                欢迎登录：<span id="username">${username}</span>
                <a href="javascript:exitLogin();">退出登录</a>
            </div>
        </div>
    </div>

    <div class="layui-row" style="margin-top: 10px;height: 20%">
        <ul class="layui-nav">
            <li class="layui-nav-item layui-this"><a href="">首页</a></li>
            <li class="layui-nav-item"><a href="">科室介绍</a></li>
            <li class="layui-nav-item"><a href="">医生介绍</a></li>
            <li class="layui-nav-item"><a href="">预约挂号</a></li>
            <li class="layui-nav-item"><a href="">历史查看记录</a></li>
        </ul>
    </div>
    <div class="layui-row" style="margin-top: 40px;height: 40%">
        <div class="layui-carousel" id="test1">
            <div carousel-item="" align="center">
                <div><img src="http://xyy.hfut.edu.cn/_upload/article/images/55/5e/a403bb9244cfbb0004759e4dbe78/8825042c-4356-4c9d-8a18-a096d493b4e0.jpg"></div>
                <div><img src="http://xyy.hfut.edu.cn/_upload/article/images/d1/b6/c7d7f0f4483f9e0458c08dfbdfb4/55ba7948-6761-4a8c-9918-325e819fc80b.jpg"></div>
                <div><img src="http://xyy.hfut.edu.cn/_upload/article/images/b8/2d/bc87ea764d55a4bc489532760439/917657eb-586d-41a1-9604-6fa03c200fec.jpg"></div>
                <div><img src="http://xyy.hfut.edu.cn/_upload/article/images/ab/e8/6dee047e425d88a84c05637f2a14/c4fc595b-1733-49b8-9f02-ae5d746b5376.jpg"></div>
            </div>
        </div>
    </div>
    <div class="layui-row" style="margin-top: 40px;height: 30%">
        <div class="layui-tab layui-tab-card">
            <ul class="layui-tab-title">
                <li class="layui-this">医院概况</li>
                <!--<li>用户管理</li>-->
                <!--<li>权限分配</li>-->
                <!--<li>商品管理</li>-->
                <!--<li>订单管理</li>-->
            </ul>
            <div class="layui-tab-content" style="height: 150px;">
                <div class="layui-tab-item layui-show">
                    <blockquote class="layui-elem-quote layui-quote-nm">
                        合肥工业大学是中华人民共和国教育部直属全国重点大学，教育部、工信部和安徽省政府共建高校，国防科工局与教育部共建高校。学校创建于1945年，1960年被中共中央批准为全国重点大学。刘少奇、朱德、董必武、陈毅、邓小平等老一辈无产阶级革命家先后来校视察指导工作，邓小平同志在1979年亲笔为学校题写了校名。2005年成为国家“211工程”重点建设高校，2009年成为国家“985工程”优势学科创新平台建设高校，2017年进入国家“双一流”建设高校行列。

                        学校深怀“工业报国”之志，秉承“厚德、笃学、崇实、尚新”的校训，以“培养德才兼备，能力卓越，自觉服务国家的骨干与领军人才”为人才培养总目标，形成了“工程基础厚、工作作风实、创业能力强”的人才培养特色。学校培育践行“爱国爱校、笃学问道、团结合作、尽己奉献、追求一流”的校园文化，不断深化教育教学改革，人才培养质量持续提高。学校已经成为国家人才培养、科学研究、社会服务、文化传承创新和国际合作交流的重要基地。
                    </blockquote>
                </div>
                <!--<div class="layui-tab-item">2</div>-->
                <!--<div class="layui-tab-item">3</div>-->
                <!--<div class="layui-tab-item">4</div>-->
                <!--<div class="layui-tab-item">5</div>-->
                <!--<div class="layui-tab-item">6</div>-->
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
