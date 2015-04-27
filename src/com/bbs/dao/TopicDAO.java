package com.bbs.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bbs.entity.Topic;
import com.bbs.entity.User;
@Repository(value="topicDao")
public class TopicDAO {
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//这里有一定的问题，有待处理
	public Session getCurrentSession(){
		return sessionFactory.openSession();
	}
	//添加帖子
	public void add(Topic topic){
		this.getCurrentSession().save(topic);
	}
	//移除帖子
	public void remove(int topicID){
		
	}
	//更新帖子
	public void update(Topic topic){
		
	}
	//根据ID查找帖子
	public boolean find(int topicID){
		return false;
	}
	//列出所有帖子列表
	public List<Topic> listAllTopics(){
		return (List<Topic>)this.getCurrentSession().createQuery("from Topic").list();
	}
	//列出相关用户的帖子列表
	public List<Topic> listTopicsForUser(int userID){
		return null;
	}
	//增加回复数目
	public void postCountIncreament(){
	}
	
	public User getUser(Topic topic){
		return (User)this.getCurrentSession().createQuery("from User user where user.id = :id")
				.setInteger("id", topic.getUserID()).uniqueResult();
	}
	
	public List<User> getUsers(){
		return (List<User>)this.getCurrentSession().createQuery("from User").list();
	}
 	
	


}
