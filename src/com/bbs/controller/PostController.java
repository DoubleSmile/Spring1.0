package com.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bbs.dao.PostDAO;
@Controller
@RequestMapping(value="/post")
public class PostController {
	
	private PostDAO postDao;
	   public PostDAO getPostDao() {
		return postDao;
	}
    @Autowired
	public void setPostDao(PostDAO postDao) {
		this.postDao = postDao;
	}
	   
		//Topic默认显示界面
        @RequestMapping(value="/index",method=RequestMethod.GET)
		public ModelAndView index(@PathVariable(value="topicID") int topicID,HttpServletRequest request,HttpServletResponse response){
            ModelAndView mv=new ModelAndView();
            mv.addObject("list",postDao.listPost(topicID));
			mv.setViewName("/postList");
            return mv;
		}
		
		//用户回复
		public ModelAndView addPost(HttpServletRequest request,HttpServletResponse response){
		    return null;
		}
		
		//删除回复
		public ModelAndView deletePost(HttpServletRequest request,HttpServletResponse response){
			return null;
		}

}
