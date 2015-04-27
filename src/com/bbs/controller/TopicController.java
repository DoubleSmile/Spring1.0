package com.bbs.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bbs.dao.TopicDAO;
import com.bbs.dao.UserDAO;
import com.bbs.entity.Topic;
import com.bbs.entity.User;
@Controller
public class TopicController {
		private TopicDAO topicDAO;
		public TopicDAO gettopicDAO() {
		    return topicDAO;
	    }
		@Autowired
	    public void settopicDAO(TopicDAO topicDAO) {
		    this.topicDAO = topicDAO;
	    }
		
		//转到默认页面
	   @RequestMapping(value="/topic/index",method=RequestMethod.GET)
	   public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
		   ModelAndView mv=new ModelAndView();
		   List<Topic> list=topicDAO.listAllTopics();
		   mv.setViewName("topicList");
		   mv.addObject("topics",list);
		   return mv;
	   }
	   //转到发帖页面
	   @RequestMapping(value="/topic/newTopic",method=RequestMethod.GET)
	   public ModelAndView newTopic(HttpServletRequest request,HttpServletResponse response){
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("newTopic");
		   return mv;
	   }
	    //用户发帖
	   @RequestMapping(value="/topic/addTopic",method=RequestMethod.POST)
		public ModelAndView addTopic(HttpServletRequest request,HttpServletResponse response){
			Topic topic=new Topic();
			User user=(User)request.getSession().getAttribute("user");
			topic.setUserID(user.getId());
			topic.setTitle(request.getParameter("title"));
			topic.setContent(request.getParameter("content"));
			topic.setPostCount(0);
			topic.setTime(new Date());
			topicDAO.add(topic);
			ModelAndView mv=new ModelAndView();
			mv.setViewName("redirect:/topic/index");
			return mv;
			
		}
		
		//用户删帖
		public void deleteTopic(HttpServletRequest request,HttpServletResponse response){
			
		}

}
