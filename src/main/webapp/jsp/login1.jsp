<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<html lang="en">
<head>
     <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Plugin styles -->
    <link rel="stylesheet" href="css/bundle.css" type="text/css">

    <!-- App styles -->
    <link rel="stylesheet" href="css/app.min.css" type="text/css">
</head>
<body class="form-membership">



<div class="form-wrapper">


    <h5>Sign in Lando</h5>

    <!-- form -->
    <form id="regForm" action="user/unsalfLogin.do" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="用户名"
            id="userName" name="userName" required autofocus>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="密码" 
            id="passWord" name="passWord" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
        <hr>
        <p class="text-muted">Don't have an account?</p>
        <a href="./register.jsp" class="btn btn-outline-light btn-sm">Register now!</a>
    </form>
    <!-- ./ form -->

</div>

<!-- Plugin scripts -->
<script src="js/bundle.js"></script>

<!-- App scripts -->
<script src="js/app.min.js"></script>
<script type="text/javascript">
			$(function(){
				var message = "${message}";
				if(message!=""){
					alert(message)
				}
			})
		</script>
</body>
</html>