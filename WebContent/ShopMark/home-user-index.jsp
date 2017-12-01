<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./public/home/style.css" />
<script src="./public/common/jquery.min.js"></script>
<script src="./public/common/ajaxForm.js"></script>
</head>
<body>
<div class="top">
	<div class="top-nav">
	<ul><li>收藏本站</li><li>关注本站</li></ul>
	<ul class="right">
		<li>测试用户，欢迎来到传智商城！[<a href="/?c=user&a=logout">退出</a>]<li>
		<li class="line">|</li><li><a href="/?c=order">我的订单</a></li>
		<li class="line">|</li><li><a href="/?c=user">会员中心</a></li>
		<li class="line">|</li><li><a href="/?c=cart">我的购物车</a></li>
		<li class="line">|</li><li>联系客服</li>
	</ul>
	</div>
</div>
<div class="box">
	<div class="header">
		<a class="left" href="/"><div class="logo"></div></a>
		<div class="search left">
			<input  ="text" class="left" />
			<input class="search-btn" type="button" value="搜索" />
			<p class="search-hot">热门搜索：PHP培训　专业教材　智能手机　平板电脑</p>
		</div>
		<div class="info left">
			<input type="button" value="会员中心" onclick="location.href='?c=user'" />
			<input type="button" value="去购物车结算" onclick="location.href='?c=cart'" />
		</div>
	</div>
	<div class="nav">
		<ul><li id="index_find"><a class="category" href="/?a=find">全部商品分类</a></li><li id="index_index"><a href="/">首页</a></li>
			<li><a href="#">特色购物</a></li><li><a href="#">优惠促销</a></li><li><a href="#">限时秒杀</a></li>
		 	<li><a href="#">品牌专区</a></li><li><a href="#">服务中心</a></li>
		</ul>
	</div><div class="usercenter">
	<div class="menu">
	<div class="menu-photo">
		<img src="./public/home/images/avatar.png" alt="用户头像" />
	</div>
	<dl><dt>我的交易</dt>
		<dd><a href="/?c=cart">我的购物车</a></dd>
		<dd><a href="/?c=order">我的订单</a></dd>
		<dd>评价管理</dd>
	</dl>
	<dl><dt>我的账户</dt>
		<dd><a href="/?c=user">个人资料</a></dd>
		<dd>密码修改</dd>
		<dd><a href="/?c=user&a=addr">收货地址</a></dd>
	</dl>
</div>	<div class="content">
		<div class="title">个人资料</div>
		<div class="showinfo">
			<p>您好，欢迎来到会员中心！</p>
			<p>请从左侧选择一个操作。</p>
		</div>
	</div>
</div>
	<div class="service">
		<ul><li>购物指南</li><li>配送方式</li><li>支付方式</li>
			<li>售后服务</li><li>特色服务</li><li>网络服务</li>
		</ul>
	</div>
	<div class="footer">传智商城·本项目仅供学习使用</div>
</div>
<script>
//激活链接
$("#user_index").addClass("curr");
</script>
</body>
</html>