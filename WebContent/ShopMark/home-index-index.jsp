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
				<li>您好，欢迎来到传智商城！[<a href="/?c=user&a=login">登录</a>][<a href="/?c=user&a=register">免费注册</a>]</li>
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
			<input type="text" class="left" />
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
	</div><!--分类左栏-->
<div class="slide">
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=1">图书</a></div>
	<div class="subitem" style="display:none;">
					<dl><dt><a href="/?a=find&cid=9">音像</a></dt><dd>
							<a href="/?a=find&cid=15">音乐</a>
							<a href="/?a=find&cid=16">影视</a>
							<a href="/?a=find&cid=17">游戏</a>
						</dd></dl>
					<dl><dt><a href="/?a=find&cid=10">IT类</a></dt><dd>
							<a href="/?a=find&cid=18">PHP书籍</a>
							<a href="/?a=find&cid=19">JAVA书籍</a>
							<a href="/?a=find&cid=20">MySQL书籍</a>
							<a href="/?a=find&cid=21">C语言书籍</a>
							<a href="/?a=find&cid=22">网页书籍</a>
							<a href="/?a=find&cid=33">Android书籍</a>
							<a href="/?a=find&cid=34">iOS书籍</a>
							<a href="/?a=find&cid=35">.NET书籍</a>
						</dd></dl>
					<dl><dt><a href="/?a=find&cid=11">少儿</a></dt><dd>
							<a href="/?a=find&cid=23">少儿英语</a>
							<a href="/?a=find&cid=24">少儿文学</a>
						</dd></dl>
					<dl><dt><a href="/?a=find&cid=12">管理</a></dt><dd>
							<a href="/?a=find&cid=25">经济</a>
							<a href="/?a=find&cid=26">金融</a>
							<a href="/?a=find&cid=27">投资</a>
						</dd></dl>
					<dl><dt><a href="/?a=find&cid=13">生活</a></dt><dd>
							<a href="/?a=find&cid=28">旅游</a>
							<a href="/?a=find&cid=29">运动</a>
						</dd></dl>
					<dl><dt><a href="/?a=find&cid=14">艺术</a></dt><dd>
							<a href="/?a=find&cid=30">摄影</a>
							<a href="/?a=find&cid=31">设计</a>
							<a href="/?a=find&cid=32">绘画</a>
						</dd></dl>
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=2">家具</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=3">手机</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=4">服装</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=5">家用电器</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=6">电脑、办公</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=7">运动户外</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
<div class="cate">
	<div class="subcate left"><a href="/?a=find&cid=8">家具、厨具</a></div>
	<div class="subitem" style="display:none;">
			</div>
</div>
</div>
<script>
	$(".cate").hover(function(){
		$(this).find(".subitem").show();
		$(this).children(".subcate").children("a").addClass("on");
	},function(){
		$(this).find(".subitem").hide();
		$(this).children(".subcate").children("a").removeClass("on");
	});
</script><!--热点图-->
<div class="hot left" id="hot">
	<div class="num"><a class="curr"></a><a></a><a></a><a></a></div>
	<ul>
		<li class="def"><a href="#"><img src="./public/upload/hot/1.jpg" /></a></li>
		<li><a href="#"><img src="./public/upload/hot/2.jpg" /></a></li>
		<li><a href="#"><img src="./public/upload/hot/3.jpg" /></a></li>
		<li><a href="#"><img src="./public/upload/hot/4.jpg" /></a></li>
	</ul>
</div>
<script src="./public/home/slideBox.js"></script>
<script>
	slideBox("#hot",5000);  //焦点图切换
</script><!--新闻列表-->
<div class="news right">最新动态</div>
<div class="clear"></div>
<!--推荐商品-->
<div class="best">
	<div class="best-title">精品推荐</div>
		<ul class="item left">
		<li><a href="/?a=goods&id=5" target="_blank">
				<img src="./public/upload/small/2016-01/20/14532744736382.png">
				</a></li>
		<li class="goods"><a href="/?a=goods&id=5" target="_blank">HTML+CSS+JavaScript网页制作案例教程</a></li>
		<li class="price">￥49.80</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=9" target="_blank">
				<img src="./public/upload/small/2016-01/20/14532726052513.png">
				</a></li>
		<li class="goods"><a href="/?a=goods&id=9" target="_blank">PHP网站开发实例教程</a></li>
		<li class="price">￥45.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=11" target="_blank">
				<img src="./public/upload/small/2016-01/20/14532723067898.png">
				</a></li>
		<li class="goods"><a href="/?a=goods&id=11" target="_blank">PHP程序设计基础教程</a></li>
		<li class="price">￥40.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=12" target="_blank">
				<img src="./public/upload/small/2016-01/20/14532747181086.png">
				</a></li>
		<li class="goods"><a href="/?a=goods&id=12" target="_blank">Android移动应用基础教程</a></li>
		<li class="price">￥39.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=16" target="_blank">
				<img src="./public/upload/small/2016-01/20/14532744971888.png">
				</a></li>
		<li class="goods"><a href="/?a=goods&id=16" target="_blank">网页设计与制作（HTML+CSS）</a></li>
		<li class="price">￥45.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=17" target="_blank">
				<img src="./public/upload/small/2016-01/20/14532753239429.png">
				</a></li>
		<li class="goods"><a href="/?a=goods&id=17" target="_blank">Photoshop CS6图像设计案例教程</a></li>
		<li class="price">￥39.80</li>
	</ul>
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
$("#index_index").addClass("curr");
</script>
</body>
</html>