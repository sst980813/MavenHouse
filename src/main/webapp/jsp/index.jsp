<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: my-deepin
  Date: 18-3-17
  Time: 下午4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String nowDate = sdf.format(date);
%>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%=basePath%>/css/index/bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/index/font-awesome.min.css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/layui.css"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo" style="font-size: 17px;"><strong>租房通后台管理系统</strong></div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;" style="text-decoration: none;">
                    <img src="<%=basePath%>/img/avatar.jpg" class="layui-nav-img">
                    <strong>${sessionScope.name}</strong>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="" style="text-decoration: none;"><strong>基本资料</strong></a></dd>
                    <dd><a href="" style="text-decoration: none;"><strong>安全设置</strong></a></dd>
                    <hr/>
                    <dd><a href="login.jsp" style="text-decoration: none;;"><strong>退出登录</strong></a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="<%=basePath%>/admin/outLogin.do" style="text-decoration: none;;"><strong>退出</strong></a></li>
        </ul>
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item">
                    <a href="javascript:;" style="text-decoration: none;"><strong><span class="fa fa-leaf fa-fw"></span>&nbsp;&nbsp;&nbsp;房源管理</strong></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:toHouseManage();"  style="text-decoration: none;"><strong>房源浏览</strong></a></dd>
                        <dd><a href="javascript:toGoodManage();"  style="text-decoration: none;"><strong>精选房源</strong></a></dd>
                        <dd><a href="javascript:;"  style="text-decoration: none;"><strong>增加房源</strong></a></dd>
                        <dd><a href="javascript:;"  style="text-decoration: none;"><strong>房源分布统计</strong></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" style="text-decoration: none;"><strong><span class="fa fa-leaf fa-fw"></span>&nbsp;&nbsp;&nbsp;订单管理</strong></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" onclick="javascript: toArticleManage();" style="text-decoration: none;"><strong>订单浏览</strong></a></dd>
                        <dd><a href="javascript:;" onclick="javascript: toArticleWrite();" style="text-decoration: none;"><strong>合同浏览</strong></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" style="text-decoration: none;"><strong><span class="fa fa-leaf fa-fw"></span>&nbsp;&nbsp;&nbsp;用户管理</strong></a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:toUserManage();"  style="text-decoration: none;"><strong>用户信息浏览</strong></a></dd>
                        <dd><a href="javascript:toUserTrajectory();"  style="text-decoration: none;"><strong>用户轨迹</strong></a></dd>
                        <dd><a href="javascript:;"  style="text-decoration: none;"><strong>增加用户</strong></a></dd>
                        <dd><a href="javascript:;"  style="text-decoration: none;"><strong>顾客建议</strong></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="" style="text-decoration: none;"><strong><span class="fa fa-twitter fa-fw"></span>&nbsp;&nbsp;&nbsp;关于我们</strong></a></li>
                <li class="layui-nav-item"><a href="" style="text-decoration: none;"><strong><span class="fa fa-send-o fa-fw"></span>&nbsp;&nbsp;&nbsp;联系我们</strong></a></li>
            </ul>
        </div>
    </div>
    <!-- 以上都是共享内容 -->
    <!-- 内容主体区域 -->
    <div class="layui-body" style="height:650px;">
        <div id="content"  >
            <div style="font-size: 45px;color: #1D9D73;margin-top: 100px;" class="text-center"><strong>欢迎登录后台管理系统</strong></div>
        </div>
    </div>

</div>
</body>
<script src="<%=basePath%>/js/index/layui.js"></script>
<script src="<%=basePath%>/js/index/layui.all.js"></script>
<script src="<%=basePath%>/js/index/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/index/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
<script type="text/javascript">
function toHouseManage() {
    document.getElementById("content").innerHTML = '<object type="text/html" data="<%=basePath%>/house/queryResource.do\" width="100%" height="600px"></object>';
}
function toGoodManage() {
    document.getElementById("content").innerHTML = '<object type="text/html" data="<%=basePath%>/house/queryResourceByPar.do\" width="100%" height="600px"></object>';
}
    function toUserManage() {
        document.getElementById("content").innerHTML = '<object type="text/html" data="<%=basePath%>/user/queryUser.do\" width="100%" height="600px"></object>';
    }
    function toUserTrajectory() {
        document.getElementById("content").innerHTML = '<object type="text/html" data="<%=basePath%>/user/queryUserTrajectory.do\" width="100%" height="600px"></object>';
    }
    
</script>
</html>