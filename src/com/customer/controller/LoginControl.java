package com.customer.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customer.dao.LoginDaoImp;
import com.customer.service.LoginServiceImp;

import entity.Customer;

@Controller
@RequestMapping("ShopMark/user")
public class LoginControl {
	@Resource
	private LoginServiceImp Login;
	
	@RequestMapping("/login")
	public String userLogin(HttpServletRequest request,HttpServletResponse response) {
		String user = (String)request.getParameter("userName");
		String password = (String)request.getParameter("password");
		if(Login.listAll(user, password).size()==0)
		{
			return "home-user-login";
			
		}
		if(Login.listAll(user, password).get(0)!=null) {
			return "home-user-index";
		}
		return "404";
		
	}	
	@RequestMapping("/regist")
	public String userRegist(HttpServletRequest request,HttpServletResponse response) 
	{
		String user = (String)request.getParameter("userName");
		String password = (String )request.getParameter("password");
		if(Login.Regist(user, password))
		{
			return "goods";
		}
		else 
		{
			return "regist";
		}
	}
}

