package com.goods.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customer.dao.LoginDaoImp;
import com.goods.dao.GooodsSearchDaoImp;

import entity.Goods;

@Service
@Transactional(readOnly=true)
public class GoodsService {
	@Resource
	private	GooodsSearchDaoImp GoodsSearch;
	
	public int SearchGoodsNum(Goods a,int price2){
		return  GoodsSearch.SearchGoodsNum(a, price2);
	}
	public List<Goods> SearchGoods(Goods a,int pageCount,int price2){
		return GoodsSearch.SearchGoods(a,pageCount, price2);
	}
}
