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
	</div><div class="find">
<div class="find-left left"><div class="title">相关商品推荐</div>
		<ul class="item left">
		<li><a href="/?a=goods&id=5" target="_blank">
							<img src="./public/upload/small/2016-01/20/14532744736382.png" />
					</a></li>
		<li class="goods"><a href="/?a=goods&id=5" target="_blank">HTML+CSS+JavaScript网页制作案例教程</a></li>
		<li class="price">￥49.80</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=9" target="_blank">
							<img src="./public/upload/small/2016-01/20/14532726052513.png" />
					</a></li>
		<li class="goods"><a href="/?a=goods&id=9" target="_blank">PHP网站开发实例教程</a></li>
		<li class="price">￥45.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=11" target="_blank">
							<img src="./public/upload/small/2016-01/20/14532723067898.png" />
					</a></li>
		<li class="goods"><a href="/?a=goods&id=11" target="_blank">PHP程序设计基础教程</a></li>
		<li class="price">￥40.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=12" target="_blank">
							<img src="./public/upload/small/2016-01/20/14532747181086.png" />
					</a></li>
		<li class="goods"><a href="/?a=goods&id=12" target="_blank">Android移动应用基础教程</a></li>
		<li class="price">￥39.00</li>
	</ul>
		<ul class="item left">
		<li><a href="/?a=goods&id=16" target="_blank">
							<img src="./public/upload/small/2016-01/20/14532744971888.png" />
					</a></li>
		<li class="goods"><a href="/?a=goods&id=16" target="_blank">网页设计与制作（HTML+CSS）</a></li>
		<li class="price">￥45.00</li>
	</ul>
	</div>
<div class="find-right left">
	<ul class="filter">
		<li class="filter-title">商品列表</li>
					<li><dl><dt>分类1：</dt><dd>
									<a href="/?a=find&cid=1" class="cid-1" >图书</a>
									<a href="/?a=find&cicid=2" class="cid-2" >家具</a>
									<a href="/?a=find&cid=3" class="cid-3" >手机</a>
									<a href="/?a=find&cid=4" class="cid-4" >服装</a>
									<a href="/?a=find&cid=5" class="cid-5" >家用电器</a>
									<a href="/?a=find&cid=6" class="cid-6" >电脑、办公</a>
									<a href="/?a=find&cid=7" class="cid-7" >运动户外</a>
									<a href="/?a=find&cid=8" class="cid-8" >家具、厨具</a>
							</dd></dl></li>
					<li><dl><dt>分类2：</dt><dd>
									<a href="/?a=find&cid=9" class="cid-9" >音像</a>
									<a href="/?a=find&cid=10" class="cid-10" >IT类</a>
									<a href="/?a=find&cid=11" class="cid-11" >少儿</a>
									<a href="/?a=find&cid=12" class="cid-12" >管理</a>
									<a href="/?a=find&cid=13" class="cid-13" >生活</a>
									<a href="/?a=find&cid=14" class="cid-14" >艺术</a>
							</dd></dl></li>
				<li><dl><dt>价格：</dt><dd>
			<a href="/?a=find&cid=1" class="price-0">全部</a>
							<a href="/?a=find&cid=1&price=0-10" class="price-0-10">0-10</a>
							<a href="/?a=find&cid=1&price=11-20" class="price-11-20">11-20</a>
							<a href="/?a=find&cid=1&price=21-30" class="price-21-30">21-30</a>
							<a href="/?a=find&cid=1&price=31-40" class="price-31-40">31-40</a>
							<a href="/?a=find&cid=1&price=41-50" class="price-41-50">41-50</a>
					</dd></dl></li>
		<li><dl><dt>排序：</dt><dd><a
			href="/?a=find&cid=1" class="order-0">最新上架</a><a 
			href="/?a=find&cid=1&order=price-asc" class="order-price-asc">价格升序</a><a
			href="/?a=find&cid=1&order=price-desc" class="order-price-desc">价格降序</a>
		</dd></dl></li>
	</ul>
	<div class="find-item">
					<ul class="item left">
				<li><a href="/?a=goods&id=17" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532753239429.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=17" target="_blank">Photoshop CS6图像设计案例教程</a></li>
				<li class="price">￥39.80</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=16" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532744971888.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=16" target="_blank">网页设计与制作（HTML+CSS）</a></li>
				<li class="price">￥45.00</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=15" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532745549350.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=15" target="_blank">iOS开发项目化入门教程</a></li>
				<li class="price">￥49.80</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=13" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532746556943.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=13" target="_blank">Android项目实战——手机安全卫士</a></li>
				<li class="price">￥39.80</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=12" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532747181086.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=12" target="_blank">Android移动应用基础教程</a></li>
				<li class="price">￥39.00</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=11" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532723067898.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=11" target="_blank">PHP程序设计基础教程</a></li>
				<li class="price">￥40.00</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=10" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532724937529.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=10" target="_blank">PHP程序设计高级教程</a></li>
				<li class="price">￥45.00</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=9" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532726052513.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=9" target="_blank">PHP网站开发实例教程</a></li>
				<li class="price">￥45.00</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=8" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532747767557.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=8" target="_blank">Java基础入门</a></li>
				<li class="price">￥44.50</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=7" target="_blank">
											<img src="./public/upload/small/2016-01/20/1453274846893.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=7" target="_blank">JavaWeb程序开发入门</a></li>
				<li class="price">￥44.50</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=6" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532749353030.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=6" target="_blank">JavaWeb程序开发进阶</a></li>
				<li class="price">￥39.50</li>
			</ul>
					<ul class="item left">
				<li><a href="/?a=goods&id=5" target="_blank">
											<img src="./public/upload/small/2016-01/20/14532744736382.png">
									</a></li>
				<li class="goods"><a href="/?a=goods&id=5" target="_blank">HTML+CSS+JavaScript网页制作案例教程</a></li>
				<li class="price">￥49.80</li>
			</ul>
				<div class="pagelist"><span>首页</span><span>上一页</span><a href="/?a=find&cid=1&page=1" class="curr">1</a><a href="/?a=find&cid=1&page=2">2</a><a href="/?a=find&cid=1&page=2">下一页</a><a href="/?a=find&cid=1&page=2">尾页</a></div>
			</div>
</div>
</div>
<script>
//筛选列表，分类的当前选中效果
(function(){
	var cids = [1,0];
	for(var i in cids){
		$(".cid-"+cids[i]).addClass("curr");
	}
}());
//商品价格的选中效果
	$(".price-0").addClass("curr");
//商品排序的选中效果
	$(".order-0").addClass("curr");
</script>
	<div class="service">
		<ul><li>购物指南</li><li>配送方式</li><li>支付方式</li>
			<li>售后服务</li><li>特色服务</li><li>网络服务</li>
		</ul>
	</div>
	<div class="footer">传智商城·本项目仅供学习使用</div>
</div>
<script>
//激活链接
$("#index_find").addClass("curr");
</script>
</body>
</html>