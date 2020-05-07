$(function(){
	//提交验证
	$(".submitDiv").click(function(e){
		//验证用户名
		var username = $("#username").val();
		if(username == undefined || username == null || username == ""){
			alert("用户名不可为空")
			return false;
		}
		
		var password = $("#password").val();
		if(/^[a-zA-Z][a-zA-Z0-9]{3,17}/.text(password)){
			alert("密码格式错误")
			return false;
		}
		if(password == undefined || password == null || password == ""){
			alert("密码不可为空")
			return false;
		}
		var repassword = $("#repassword").val();
		if(repassword != password){
			alert("两次密码输入不一致")
			return false;
		}
		//电话不可为空
		//电话不可存在
		//验证码不可为空
		//必须接受协议
		var phoneNumber = $("#phoneNumber").val();
		if(phoneNumber == undefined || phoneNumber == null || phoneNumber == ""){
			alert("电话不可为空")
			return false;
		}
		//验证密码
		//验证重复密码
		$(".regForm").submit();//全部通过则提交
	});
})
