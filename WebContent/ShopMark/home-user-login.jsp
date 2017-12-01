<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="./public/home/user.css" rel="stylesheet" />
<script src="./public/common/jquery.min.js"></script>
<script src="./public/common/ajaxForm.js"></script>
</head>
<body>
<div class="box">
	<h1>传智商城 - 欢迎登录</h1>
	<div class="main">
		<div class="login-ad left"><!--广告位--></div>
		<form action="user/login" id="loginForm">
		<table class="login right">
			<tr><th>用户名：</th><td><input type="text" name="userName"/></td></tr>
			<tr><th>密码：</th><td><input type="password" name="password"/></td></tr>
			<tr><th>验证码：</th><td><input type="text" name="captcha"/></td></tr>
			<tr><td> </td><td><img src="./public/common/captcha.png" id="captcha" title="点击刷新验证码"/></td></tr>
			<tr><td> </td><td><input class="button" type="submit" value="登录" /></td></tr>
			<tr><td colspan="2" class="center"><a href="home-user-register.jsp">立即注册</a><a href="home-index-index">返回首页</a></td></tr>
		</table>
		</form>
	</div>
</div>
<script>
//验证码点击刷新
$(function(){
	var $img = $("#captcha");
	var src = $img.attr("src")+"&_=";
	$img.click(function(){
		$img.attr("src",src+Math.random());
	});
});
//Ajax表单提交
$("#loginForm").ajaxForm(function(data){
	//登录失败，刷新验证码
	data.ok || 
	$("#captcha").click();
});
</script>
</body>
</html>