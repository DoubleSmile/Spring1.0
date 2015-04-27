package com.bbs.controller;

import java.util.Date;

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
import com.bbs.util.CookieUtil;
import com.mysql.fabric.xmlrpc.base.Data;
@Controller
@RequestMapping(value="/user")
public class UserController {
	
	    private UserDAO userDAO;
	
		public UserDAO getuserDAO() {
		    return userDAO;
	    }

		@Autowired
	    public void setuserDAO(UserDAO userDAO) {
		    this.userDAO = userDAO;
	    }

		//用户登陆
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public ModelAndView login(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView();
			String account=request.getParameter("account");
			String password=request.getParameter("password");
			if(userDAO.findByAccount(account)==null){
				mv.addObject("accountWarningMessage","您输入的账号未注册,请注册之后再登陆");
				mv.setViewName("/login");
				return mv;
			}
			else if(userDAO.findByAccountAndPassword(request.getParameter("account"), request.getParameter("password"))==null){
				mv.addObject("passwordWarningMessage","您输入的的密码有误");
				mv.setViewName("/login");
				return mv;
			}
			else {
				User user=userDAO.findByAccount(account);
				CookieUtil.setCookie(response, "userAccount", user.getAccount(), 3600*24*7, "/", "localhost");
				request.getSession().setAttribute("user", user);
				request.getSession().setMaxInactiveInterval(3600*24);
				mv.setViewName("/index");
				return mv;
			}
		}
		
       //用户注销	
		@RequestMapping(value="/loginOut",method=RequestMethod.GET)
		public ModelAndView loginOut(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView();
			Cookie[] cookies=request.getCookies();
			for(Cookie c:cookies){
				if(c.getName().equals("user")){
					c.setValue(null);
				}
			}
			request.getSession().removeAttribute("user");
			mv.setViewName("/index");
			return mv;
		}
		
		//用户注册
		@RequestMapping(value="/register",method=RequestMethod.POST)
		public ModelAndView register(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView();
			User user1=new User();
			if(userDAO.findByAccount(request.getParameter("account"))==null){
				user1.setName(request.getParameter("username"));
				user1.setAccount(request.getParameter("account"));
				user1.setPassword(request.getParameter("pw1"));
				user1.setTime(new Date());
				user1.setContent("Just a test.");
				userDAO.add(user1);
				mv.setViewName("/index");
				return mv;
			}else{
				mv.addObject("warningMessage","该用户名已经被注册！");
				mv.setViewName("/register");
				return mv;
			}
		}
	
		
		
		
		
		

}
