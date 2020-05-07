<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- Plugin styles -->
    <link rel="stylesheet" href="css/bundle.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- App styles -->
    <link rel="stylesheet" href="css/app.min.css" type="text/css">
</head>
<body class="form-membership">


<div class="form-wrapper">

    <h5>Create account</h5>

    <!-- form -->
    <form id="regForm" action="user/unsalfReg.do" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="用户名[6-18位字母开头，无特殊符号的字符串]" 
               id="username" name="username">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="密码[6-18位字母开头，无特殊符号的字符串]" id="password" name="password" required>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="重复密码"  id="repassword" data=""  required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="手机号" id="phoneNumber" name="phoneNumber" value="" required>
            <input type="hidden" id="phoneNumbertemp" checkresult="0"/>
        </div>
        <div class="textDiv">
		<input type="checkbox" id="checkboxReg"/>阅读并接受《Lando协议及隐私保护声明》
		</div>
		<div class="submitDiv">
        <button type="submit" class="btn btn-primary btn-block" >提交</button>
        </div>
        <hr>
        <p class="text-muted">已有账号?</p>
        <a href="./login1.jsp" class="btn btn-outline-light btn-sm">登录</a>
    </form>
    <!-- ./ form -->
</div>
<!-- Plugin scripts -->
<script src="js/bundle.js"></script>
  
<!-- App scripts -->
<script src="js/app.min.js"></script>
<script type="text/javascript" src="js/jquery-2.1.1.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/reg.js" ></script>
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