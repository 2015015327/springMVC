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
		<div class="title">管理收货地址</div>
		<form method="post" action="/?c=user&a=addrEditExec" id="addrForm">
		<input id="address" type="hidden" name="address" />
		<table class="addr">
			<tr><th width="95">收件人：</th><td><input type="text" value="张三" name="consignee" /></td></tr>
			<tr><th>收件地区：</th><td>
				<select id="province"></select> <select id="city"></select> <select id="area"></select>
				</td></tr>
			<tr><th>详细地址：</th><td><input id="addr" type="text" /></td></tr>
			<tr><th>手机：</th><td><input type="text" value="13812345678" name="phone" /></td></tr>
			<tr><th>邮箱：</th><td><input type="text" value="123@123.com" name="email" /></td></tr>
			<tr><th></th><td class="act">
				<input type="submit" value="保存" id="submit" />
				<input type="button" value="取消" onclick="location.href='/?c=user&a=addr'" />
			</td></tr>
		</table>
		</form>
	</div>
</div>
<script src="./public/home/chinaArea.js"></script>
<script>
//填充地区三级下拉菜单
(function(){
	var data = chinaArea(); //载入JSON地区数据
	var $province = $("#province");
	var $city = $("#city");
	var $area = $("#area");
	//1级下列菜单的change事件
	$province.change(function(){
		var id = $(this).val();
		if(id==="0" || $(this).find('option:selected').text()==="其他"){
			$city.hide();
			$area.hide();
		}else{
			fillSelect($city,data[id].sub);
			$city.show();
			$area.hide();
		}
	});
	//2级下列菜单的change事件
	$city.change(function(){
		var id = $(this).val();
		var pid = $province.val();
		if(id==="0" || $(this).find('option:selected').text()==="其他"){
			$area.hide();
		}else if(data[pid].sub[id].sub!==undefined){
			fillSelect($area,data[pid].sub[id].sub);
			$area.show();
		}
	});
	fillSelect($province,data); //自动填充1级菜单
	$province.change(); //自动载入第1个下拉菜单
	//自动填充下拉菜单
	function fillSelect($select,data){
		$select.html(''); //清空原有的数据
		for(var i in data){
			$select.append('<option value="'+i+'">'+data[i].name+'</option>');
		}
	}
})();
//自动填写收货地址
(function(){
	var auto = ["\u5317\u4eac","\u660c\u5e73\u533a","","\u5efa\u6750\u57ce\u897f\u8def\u91d1\u71d5\u9f99\u529e\u516c\u697c\u4e00\u5c42"]; //自动切换
	if(auto.length>3){
		$("#province").find('option:contains("'+auto[0]+'")').attr("selected","selected").change();
		$("#city").find('option:contains("'+auto[1]+'")').attr("selected","selected").change();
		$("#area").find('option:contains("'+auto[2]+'")').attr("selected","selected");
		$("#addr").val(auto[3]);
	}
})();
//提交表单时检查并拼接完整地址
$("#submit").click(function(){
	var pro_val = $("#province:visible").find("option:selected").text();
	var city_val = $("#city:visible").find("option:selected").text();
	var area_val = $("#area:visible").find("option:selected").text();
	var addr = $("#addr").val();
	if(pro_val === '请选择' || city_val === '请选择' || area_val === '请选择' || $.trim(addr)===""){
		$.showTip("请输入正确的地址");
		return false;
	}
	$("#address").val(pro_val+','+city_val+','+area_val+','+addr);
});
$("#addrForm").ajaxForm();
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
$("#user_addredit").addClass("curr");
</script>
</body>
</html>