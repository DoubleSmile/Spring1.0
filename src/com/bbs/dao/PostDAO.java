package com.bbs.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bbs.entity.Post;
@Repository(value="postDAO")
public class PostDAO {
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
	    //添加回复
		public void add(Post post){
			this.getCurrentSession().save(post);
		}
		//移除帖子
		public void remove(int postID){
			
		}
		//更新帖子
		public void update(Post post){
			
		}
		//根据ID查找帖子
		public boolean find(int postID){
			return false;
		}
		//列出相关帖子的所有回复
		@SuppressWarnings("unchecked")
		public List<Post> listPost(int topicID){
			return (List<Post>)this.getCurrentSession().createQuery("from Post p where p.topicID = :topicID")
					.setInteger("topicID", topicID).list();
		}
		

}
