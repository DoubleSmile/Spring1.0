package com.bbs.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	    //用户登陆时候的主界面
	    @RequestMapping(value="/index",method=RequestMethod.GET)
		public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView();
			mv.addObject("contextPath",request.getContextPath());
			return mv;
		}
	    
	    //用户注册
	    @RequestMapping(value="/register",method=RequestMethod.GET)
		public ModelAndView register(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView("register");
			mv.addObject("contextPath",request.getContextPath());
			return mv;
		}
	    
	    //用户登陆
	    @RequestMapping(value="/login",method=RequestMethod.GET)
		public ModelAndView login(HttpServletRequest request,HttpServletResponse response){
			ModelAndView mv=new ModelAndView("login");
			mv.addObject("contextPath",request.getContextPath());
			return mv;
		}

}
