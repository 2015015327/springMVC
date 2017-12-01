package com.goods.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goods.service.GoodsService;

import entity.Goods;
import entity.GoodsType;

@Controller
@RequestMapping("Goods")
public class GoodsearchController {
	@Resource
	private GoodsService GoodsSearch;
	@RequestMapping("/search")
	public String SearchGoods(HttpServletRequest request,HttpServletResponse response) {
		int pageCount;
		
		if(request.getParameter("pageCount")==null) {pageCount=1;}
		else{pageCount = Integer.valueOf(request.getParameter("pageCount"));}
		
		int price1 = Integer.valueOf(request.getParameter("price1"));
		int price2 = Integer.valueOf(request.getParameter("price2"));
		String goodsName = (String)request.getParameter("goodsName");
		int goodsTypeId = Integer.valueOf(request.getParameter("goodsType"));
		String goodsTypeName = (String)request.getParameter("goosTypeName");
		
		Goods goods = new Goods();
		GoodsType goodsType = new GoodsType();
		goodsType.setGoodsTypeId(goodsTypeId);
		goodsType.setGoodsTypeName(goodsTypeName);
		
		goods.setGoodsName(goodsName);
		goods.setGoodsPrice(price1);
		goods.setGoodsType(goodsType);
		
		
		if(request.getAttribute("SearchGoodsNum")==null) {
			request.setAttribute("SearchGoodsNum", GoodsSearch.SearchGoodsNum(goods,price2)); 
		}
		if(GoodsSearch.SearchGoods(goods, pageCount, price2).size()==0) {
			request.setAttribute("SearchGoods", "empty");
		}
		else {
			request.setAttribute("SearchGoods", GoodsSearch.SearchGoods(goods, pageCount, price2));
			
		}
		return "GoodSearch";
		
	
	}
}
