package com.bbs.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bbs.dao.UserDAO;
import com.bbs.entity.User;
import com.mysql.fabric.xmlrpc.base.Data;
@Controller
@RequestMapping(value="/user")
public class UserController {
	
	    private UserDAO userDao;
	
		public UserDAO getUserDao() {
		    return userDao;
	    }

		@Autowired
	    public void setUserDao(UserDAO userDao) {
		    this.userDao = userDao;
	    }

		//用户登陆
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public ModelAndView login(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView();
			mv.addObject("contextPath", request.getContextPath());
			String account=request.getParameter("account");
			String password=request.getParameter("password");
			if(userDao.findByAccount(account)==null){
				mv.addObject("accountWarningMessage","您输入的账号未注册,请注册之后再登陆");
				mv.setViewName("/login");
				return mv;
			}
			else if(userDao.findByAccountAndPassword(request.getParameter("account"), request.getParameter("password"))==null){
				mv.addObject("passwordWarningMessage","您输入的的密码有误");
				mv.setViewName("/login");
				return mv;
			}
			else {
				User user=userDao.findByAccount(account);
				Cookie cookie=new Cookie("user",Integer.toString(user.getId()));
				cookie.setMaxAge(3600*24*7);
				request.getSession().setAttribute("user", user);
				mv.setViewName("/index");
				return mv;
			}
		}
			
		
		//用户注册
		@RequestMapping(value="/register",method=RequestMethod.POST)
		public ModelAndView register(HttpServletRequest request,HttpServletResponse response,@Valid @ModelAttribute("userDetail")User user,BindingResult result){
			ModelAndView mv=new ModelAndView();
			User user1=new User();
			mv.addObject("contextPath", request.getContextPath());
			if(result.hasErrors()){
				mv.setViewName("/register");
				return mv;
			}
			if(userDao.findByAccount(request.getParameter("account"))==null){
				user1.setName(request.getParameter("username"));
				user1.setAccount(request.getParameter("account"));
				user1.setPassword(request.getParameter("pw1"));
				user1.setTime(null);
				user1.setContent("Just a test.");
				userDao.add(user1);
				mv.setViewName("/index");
				return mv;
			}else{
				mv.addObject("warningMessage","该用户名已经被注册！");
				mv.setViewName("/register");
				return mv;
			}
		}
	
	    //用户注销
		public ModelAndView logOut(HttpServletRequest request,HttpServletResponse response){
			return null;
		}
		
		
		
		
		

}
