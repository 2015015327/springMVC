package com.customer.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import entity.Customer;

@Repository
public class LoginDaoImp {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Customer> findAll(String name,String password){
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from Customer as c where c.customerName=? and c.customerPassword=?");
		q.setParameter(0, name);
		q.setParameter(1, password);
		session.close();
		return q.list();
	}
	public boolean Newcustomer(String name,String password) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from Customer as c where c.customerName=?");
		q.setParameter(0, name);
		if(q.list().size()==0){
			Customer c = new Customer();
			c.setCustomerName(name);
			c.setCustomerPassword(password);
			session.save(c);
			session.close();
			return true;
		}
		return false;
	}
}
