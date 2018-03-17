<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>北大青鸟办公自动化管理系统</title>

<style type="text/css">
	* {
		margin: 0;
		padding: 0;
	}
	
	body {
		font: 12px 宋体;
		background: #4BB8EF url(images/bg.gif) repeat-x;
	}
	
	img {
		border: 0;
	}
	
	.login-top {
		width: 100%;
		height: 186px;
		margin: 147px auto 0;
		background: url(images/login_01.gif) no-repeat center 0;
	}
	
	.login-area {
		width: 100%;
		height: 140px;
		margin: 0 auto;
		background: url(images/login_02.gif) no-repeat center 0;
	}
	
	.login-area form {
		width: 290px;
		margin: 0 auto;
	}
	
	.login-area label {
		clear: left;
		float: left;
		margin-top: 13px;
		width: 60px;
		font: 600 14px 宋体;
	}
	
	.login-area  input {
		width: 122px;
		height: 16px;
		margin-top: 11px;
		border: 1px #767F94 solid;
		font: 12px/ 16px 宋体;
	}
	
	input.login-sub {
		width: 104px;
		height: 34px;
		border: 0;
		background: url(images/login_sub.gif) no-repeat 0px 1px; *
		margin-top: 5px;
	}
	
	.login-copyright {
		width: 100%;
		height: 30px;
		margin: 18px auto 0;
		background: url(images/copyright.gif) no-repeat center 0;
	}
</style>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	function changeValidateCode(obj) {
		//获取当前的时间作为参数，无具体意义 
		var timenow = new Date().getTime();
		//每次请求需要一个不同的参数，否则可能会返回同样的验证码
		//这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。 
		obj.src = "random.action?d=" + timenow;
	}
	function check() {
		var msg = document.getElementById("msg").value;
		if (msg.length != 0) {
			alert(msg);
			document.getElementById("msg").value = "";
		}
	}
	//js
	$(function(){
		$("#logbtn").click(function(){
			var name=$("#uname").val();
			var password=$("#upassword").val();
			$.post("login.action",{"name":name,"password":password},function(res){
				if(res.msg=="success"){
					window.location.href="index.jsp";	
				}else{
					alert("账号密码错误请重新填写");
				}
			});
		});
	});
</script>
</head>
<body onload="check()">
	<div class="login-top"></div>
	<div class="login-area">
		<form action="login.action" method="post">
			<label>
				姓&nbsp;&nbsp;名：
			</label>
			<input type="text" name="name" id="uname"/>
			<label>
				密&nbsp;&nbsp;码：
			</label>
			<input type="password" name="password" id="upassword"/>
			<label>
				验证码：
			</label>
			<input type="text" name="random" size="6" />
			<input type="image" src="random.action"
				onclick="changeValidateCode(this)" title="点击图片刷新验证码" />
			<input type="button" class="login-sub" id="logbtn" />
		</form>
	</div>
	<div class="login-copyright"></div>
</body>
</html>