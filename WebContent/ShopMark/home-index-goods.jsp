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
	</div><div class="goodsinfo">
	<div class="now_cat">当前位置：
					<a href="/?a=find&cid=1">图书</a> &gt;
					<a href="/?a=find&cid=10">IT类</a> &gt;
					<a href="/?a=find&cid=18">PHP书籍</a> &gt;
				PHP网站开发实例教程	</div>
	<div class="pic left">
		<link href="./public/home/album/album.css" rel="stylesheet" />
<div id="preview">
<div class=jqzoom id="spec-n1">
	<img width="350" height="350" src="./public/upload/big/2016-01/20/14532726052513.png" jqimg="./public/upload/big/2016-01/20/14532726052513.png" />
</div>
<div id="spec-n5">
	<div class=control id="spec-left"></div>
	<div id="spec-list">
		<ul class="list-h">
			<li><img src="./public/upload/big/2016-01/20/14532726052513.png" /></li>
			<li><img src="./public/upload/big/2016-01/20/14532755521080.png"></li>
			<li><img src="./public/upload/big/2016-01/20/14532755631144.png"></li>
			<li><img src="./public/upload/big/2016-01/20/14532755741690.png"></li>
			<li><img src="./public/upload/big/2016-01/20/14532755832918.png"></li>
		</ul>
	</div>
	<div class=control id="spec-right"></div>
</div>
</div>
<!-- 引入并配置鼠标滑过小图显示大图的插件 -->
<script src="./public/home/album/jqueryZoom.js"></script>
<script src="./public/home/album/jqueryMarquee.js"></script>
<script>
	$(".jqzoom").jqueryZoom({
		 xzoom:400,
		 yzoom:400,
		 offset:10,
		 position:"right",
		 preload:1,
		 lens:1
	 });
	 $("#spec-list").jqueryMarquee({
		 deriction:"left",
		 width:350,
		 height:56,
		 step:2,
		 speed:4,
		 delay:10,
		 control:true,
		 _front:"#spec-right",
		 _back:"#spec-left"
	 });
	 $("#spec-list img").bind("mouseover",function(){
		 var src=$(this).attr("src");
		 $("#spec-n1 img").eq(0).attr({
			 src:src.replace("\/n5\/","\/n1\/"),
			 jqimg:src.replace("\/n5\/","\/n0\/")
		 });
		 $(this).css({
			 "border":"2px solid #ff6600",
			 "padding":"1px"
		 });
	 }).bind("mouseout",function(){
		 $(this).css({
			 "border":"1px solid #ccc",
			 "padding":"2px"
		 });
	});
</script>
	</div>
	<div class="info left"><h1>PHP网站开发实例教程</h1><table>
		<tr><th>售 价：</th><td><span class="price">￥45.00</span></td></tr>
		<tr><th>商品编号：</th><td>017</td></tr>
		<tr><th>累计销量：</th><td>1000</td></tr>
		<tr><th>评 价：</th><td>1000</td></tr>
		<tr><th>配送至：</th><td>北京（免运费）</td></tr>
		<tr><th>购买数量：</th>
			<td>
			<input type="button" value="-" class="cnt-btn" />
			<input type="text" value="1" id="num" class="num-btn" />
			<input type="button" value="+" class="cnt-btn" />（库存：2560）
			</td>
		</tr>
		<tr><td colspan="2" class="button"><a href="#" class="light" id="buy">立即购买</a><a href="#" id="addCart">加入购物车</a></td></tr>
		</table>
	</div>
	<div class="line"></div>
	<div class="goods-slide left"><div class="title">相关商品推荐</div>
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
			</div>
	<div class="desc left"><div class="title">商品详情</div><div class="content"><p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;color:rgb(64,64,64);font-family:tahoma, arial, '宋体', sans-serif;white-space:normal;"><span style="margin:0px;padding:0px;"><span style="margin:0px;padding:0px;color:rgb(0,0,0);font-size:18px;line-height:1.5;">PHP是一种运行于服务器端并完全跨平台的嵌入式脚本编程语言，是目前Web应用的主流语言之一。本书就是面向初学者推出的一本案例驱动式教材，通过丰富实用的案例，全面讲解了PHP网站的开发技术。</span></span></p><p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;color:rgb(64,64,64);font-family:tahoma, arial, '宋体', sans-serif;white-space:normal;"><span style="margin:0px;padding:0px;"><span style="margin:0px;padding:0px;"> </span><span style="margin:0px;padding:0px;font-size:18px;">全书共9章：第1章讲解PHP开发环境搭建，通过部署网站的方式，让初学者了解基于PHP和MySQL的成熟开源项目的运行过程；第2章以趣味的案例学习PHP语法基础；第3章通过开发企业员工管理系统来学习PHP的数据库操作；第4章通过用户登录注册、用户信息编辑、表单安全验证、保存浏览历史、用户登录、保存登录状态等案例学习Web表单与会话技术；第5章通过用户头像上传、生成缩略图、图片添加水印、验证码生成与验证、文件管理器、在线网盘等案例来学习文件与图像技术；第6～8章通过常用类库封装、文章管理系统、学生管理系统等实用案例学习面向对象编程、<span style="margin:0px;padding:0px;"> </span><span style="margin:0px;padding:0px;"> </span>PDO数据库抽象层和ThinkPHP框架；第9章通过开发实战项目——电子商城网站，综合运用本书所学的知识，让读者迅速积累项目开发经验。</span></span></p><p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;color:rgb(64,64,64);font-family:tahoma, arial, '宋体', sans-serif;white-space:normal;"><span style="margin:0px;padding:0px;font-size:18px;">本书附有配套视频、源代码、习题、教学课件等资源，为了帮助初学者更好地学习本书讲解的内容，还提供了在线答疑，希望得到更多读者的关注。</span></p><p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;color:rgb(64,64,64);font-family:tahoma, arial, '宋体', sans-serif;white-space:normal;"><span style="margin:0px;padding:0px;font-size:18px;">本书适合作为高等院校计算机相关专业程序设计或者Web应用开发的教材，也可作为PHP技术基础的培训教材，同时也是一本适合广大计算机编程爱好者的优秀读物。</span></p></div></div>
</div>
<script>
(function(){
	var $num = $("#num");
	var id = 9;
	var stock = 2560;
	//购买数量加减
	$(".cnt-btn").click(function(){
		var num = parseInt($num.val());
		if ($(this).val() === '-') {
			if ( num=== 1) return;
			$num.val(num-1);
		}else if ($(this).val() === '+') {
			if (num === stock) return;
			$num.val(num+1);
		}
	});
	//自动纠正购买数量
	$num.keyup(function(){
		var num = parseInt($(this).val());
		if(num<1){
			$(this).val(1);
		}else if(num > stock){
			$(this).val(stock);
		}
	});
	//添加购物车
	$("#addCart").ajaxButton("/?c=cart&a=addExec",function(){
		return {"id":id,"num":$num.val()};
	});
	//购买（下订单）
	$("#buy").ajaxButton("/?c=order&a=addExec",function(){
		return {"buy":[{"id":id,"num":$num.val()}]};
	});
})();
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
$("#index_goods").addClass("curr");
</script>
</body>
</html>