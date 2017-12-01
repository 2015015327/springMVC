package com.customer.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customer.dao.LoginDaoImp;

import entity.Customer;


@Service
@Transactional(readOnly=true)
//transaction为事物，readonly为属性表示只读
//类上面有事物时所有方法默认为只读，但如果方法上有注释的话，则按方法上的属性
public class LoginServiceImp {
	@Resource
	private	LoginDaoImp login;
	
	public List<Customer> listAll(String name,String password){
		return this.login.findAll(name,password);
	}
	
	
	public boolean Regist(String user,String password) {
		if(login.Newcustomer(user, password)) {
			return true;
		}
		return false;
		
	}
}
