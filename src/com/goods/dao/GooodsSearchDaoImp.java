package com.goods.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import entity.Goods;
import entity.orders_detail;

@Repository
public class GooodsSearchDaoImp {
	@Resource
	private SessionFactory sessionFactory;
	
	public int SearchGoodsNum(Goods a,int price2){
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(orders_detail.class);
		Criterion c1 = Restrictions.like("goodsName", a.getGoodsName());
		Criterion c2 = Restrictions.eq("goodsTypeId",a.getGoodsType().getGoodsTypeId());
		Criterion c3 = Restrictions.between("goodsPrice", price2, a.getGoodsPrice());
		criteria.add(c1);
		criteria.add(c2);
		criteria.add(c3);
		session.close();
		return criteria.list().size();
	}
	public List<Goods> SearchGoods(Goods a,int PageCount,int price2){
		Session session = sessionFactory.openSession();
		Criteria criteria=session.createCriteria(orders_detail.class);
		Criterion c1 = Restrictions.like("goodsName", a.getGoodsName());
		Criterion c2 = Restrictions.eq("goodsTypeId",a.getGoodsType().getGoodsTypeId());
		Criterion c3 = Restrictions.between("goodsPrice", price2, a.getGoodsPrice());
		criteria.add(c1);
		criteria.add(c2);
		criteria.add(c3);
		criteria.setFirstResult((PageCount-1)*15);
		criteria.setMaxResults(15);
		session.close();
		return criteria.list();
	}
}
