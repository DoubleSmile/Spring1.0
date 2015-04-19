package com.bbs.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bbs.entity.User;
@Repository(value="userDAO") 
public class UserDAO {
	
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
	//添加用户
	public void add(User user){
		this.getCurrentSession().save(user);
	}
	//移除用户
	public void remove(int userID){
		
	}
	//更新用户
	public void update(User user){
		
	}
	//根据ID查找用户
	public boolean find(int userID){
		return false;
	}
	//根据账号查找用户
	public User findByAccount(String account){
		
		return (User)this.getCurrentSession().createQuery(
				"FROM User u WHERE u.account = :account ")
			.setString("account", account).uniqueResult();
	}
	//根据账号密码查找用户
	public User findByAccountAndPassword(String account,String password){
		
		return (User)this.getCurrentSession().createQuery(
				"FROM User u WHERE u.account = :account and u.password = :password")
			.setString("account", account).setString("password",password).uniqueResult();
	}
	

	

}
