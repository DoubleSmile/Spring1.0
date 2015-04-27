package com.bbs.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.bbs.dao.UserDAO;
import com.bbs.entity.User;
import com.bbs.util.CookieUtil;

public class GlobalInterceptor implements HandlerInterceptor{
    
	private UserDAO userDao; 
	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object onject) throws Exception {
		Cookie cookie=CookieUtil.getCookie(request, "userAccount");
		if(cookie==null)
			return true;
		if(cookie!=null && request.getSession().getAttribute("user")==null){
			System.out.println(cookie.getValue());
			System.out.println(userDao.toString());
			User user=userDao.findByAccount(cookie.getValue());
			System.out.println(user.toString());
			if(user!=null){
				request.getSession().setAttribute("user", user);
				request.getSession().setMaxInactiveInterval(3600*24);
			}else{
				cookie.setValue(null);
			}
		}else{
			cookie.setValue(null);
			
		}
		return true;
        
	}
	

}
