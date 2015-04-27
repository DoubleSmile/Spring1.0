package com.bbs.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bbs.dao.PostDAO;
import com.bbs.entity.Post;
import com.bbs.entity.Topic;
import com.bbs.entity.User;
@Controller
@RequestMapping(value="/post")
public class PostController {
	
	private PostDAO postDAO;
	public PostDAO getpostDAO() {
		return postDAO;
	}
    @Autowired
	public void setpostDAO(PostDAO postDAO) {
		this.postDAO = postDAO;
	}
	   
		//Topic默认显示界面
        @RequestMapping(value="/index/{topicID}",method=RequestMethod.GET)
		public ModelAndView index(@PathVariable(value="topicID") int topicID,HttpServletRequest request,HttpServletResponse response){
            ModelAndView mv=new ModelAndView();
            mv.addObject("list",postDAO.listPost(topicID));
            mv.addObject("topic",postDAO.getTopic(topicID));
			mv.setViewName("/postList");
            return mv;
		}
		
		//用户回复
        @RequestMapping(value="/addPost/{topicID}",method=RequestMethod.POST)
		public ModelAndView addPost(@PathVariable(value="topicID") int topicID,HttpServletRequest request,HttpServletResponse response){
		    Post post=new Post();
		    post.setContent(request.getParameter("content"));
		    post.setTopicID(topicID);
		    User user=(User)request.getSession().getAttribute("user");
		    post.setUserID(user.getId());
		    post.setTime(new Date());
		    postDAO.add(post);
		    Topic topic=postDAO.getTopic(topicID);
		    topic.setPostCount(topic.getPostCount()+1);
		    ModelAndView mv=new ModelAndView();
		    mv.setViewName("redirect:/post/index/{topicID}");
		    return mv;
		}
		
		//删除回复
		public ModelAndView deletePost(HttpServletRequest request,HttpServletResponse response){
			return null;
		}
		

}
