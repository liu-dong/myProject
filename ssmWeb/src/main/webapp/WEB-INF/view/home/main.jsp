<%--suppress ALL --%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="${ctx}/plugin/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/js/jquery-3.4.0.js"></script>
    <script src="${ctx}/plugin/layui/layui.js"></script>
    <script src="${ctx}/common/menu.js"></script>
    <script>
        var path = ${ctx};
        alert(path);
    </script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo" id="systemName">
            <span style="font-size: medium; "><!--系统名称--></span>
        </div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left" id="topLeftMenu"></ul>
        <ul class="layui-nav layui-layout-right" id="topRightMenu">
            <li class="layui-nav-item">
                <a href="javascript:void(0);">
                    <img src="${ctx}/images/background.jpg" class="layui-nav-img"  alt="背景">
                    LD
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:void(0);">基本资料</a></dd>
                    <!--<dd><a href="javascript:void(0);">安全设置</a></dd>-->
                </dl>
            </li>
            <li class="layui-nav-item"><a href="javascript:exitLogin();">退出登录</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" id="leftMenu"></ul>
        </div>
    </div>

    <div class="layui-body" align="center">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;height: 95%;">
            <iframe id="htmlPage" name="htmlPage" height="100%" width="100%"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © dong.com - 底部固定区域
    </div>
</div>
<script>
    $(function () {
        initMenu();
        loadPage("/images/background.jpg");
    });

    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });

    //加载页面
    function loadPage(url) {
        $("#htmlPage").attr("src", url);
    }
    //初始化菜单
    function initMenu() {
        //系统名称
        $("#systemName").children().first().html("个人信息系统");
        let topLiName = ["用户管理", "图书管理", "系统管理", "其他系统"];
        //初始化topLeft菜单
        for (let i = 0; i < topLiName.length; i++) {
            $("#topLeftMenu").append("<li class=\"layui-nav-item\"><a href=\"javascript:void(0);\">" + topLiName[i] + "</a></li>")
        }

        let menu = MENU_CONST;
        //初始化left菜单
        let li = "";//第一级菜单
        let dl = "";
        for (let i = 0; i < menu.length; i++) {//遍历第一级菜单
            let firstMenu = menu[i];//第一级菜单对象
            if (firstMenu.childMenu && firstMenu.childMenu.length > 0){
                let dd = "";//第二级菜单
                for (let j=0;j<firstMenu.childMenu.length;j++){//遍历第一级菜单下的第二级菜单
                    let secondMenu = firstMenu.childMenu[j];//第二级菜单对象
                    dd += "<dd><a href=\"javascript:loadPage('"+secondMenu.url+"');\">"+secondMenu.menuName+"</a></dd>";
                }
                dl = "<dl class=\"layui-nav-child\">"+dd+"</dl>";
            }
            li += "<li class=\"layui-nav-item\"><a href=\"javascript:void(0);\">"+firstMenu.menuName+"</a>"+dl+"</li>";
        }
        $("#leftMenu").append(li);
    }

    //退出登录
    function exitLogin() {
        window.location.replace("${ctx}/loginRegister/goLoginView")
    }


</script>
</body>
</html>
