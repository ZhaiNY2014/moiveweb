package com.moviemanager.web.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;
import com.moviemanager.web.model.UserModel;




@Controller
public class LoginController {
	
	@RequestMapping(value="/Login/haslogin",method=RequestMethod.POST)
	public ModelAndView Login(@RequestParam(value="username",required=true) String username, 
			@RequestParam(value="password",required=true) String password,
			UserModel user,
			HttpSession session,@CookieValue(value="JSESSIONID", defaultValue="")String sessionid) throws Exception{
		

		
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		UserModel user_db = sjc.SelectUser(username);
		//String user_session = (String)session.getAttribute("username");
		//System.out.println(user_session);
		//验证是否有用户已经登录
//		boolean ishaslogin = false;
//		if(user_session.equals("null"))
//			ishaslogin = false;
//		else{
//			if(user_db.getUsername().equals(user_session))
//				ishaslogin = true;
//			else
//				ishaslogin = false;
//		}
//		System.out.println(ishaslogin);
//		System.out.println(user_db.getUsername().equals(user_session));
		
		if(user_db.getUsername().equals(username)  //用户名通过
				&& user_db.getPassword().equals(password)  //密码通过
				/*&& ishaslogin*/)  //不是已登录用户
		{
			session.setAttribute("session-userid", sessionid);
			session.setAttribute("userid", user_db.getUserid_I().toString());
			session.setAttribute("username", username);
			session.setAttribute("account", user_db.getAccount_I().toString());
			session.setAttribute("beforepage", "./main");//向session加入之前页面地址
			session.setAttribute("islogin", "is");
			//mv.addObject("username", username);
			mv.addObject("user", user.getUsername());
			mv.setViewName("/Login/haslogin");
		}else{
			mv.setViewName("/Login/fail");
		}
		return mv;
	}
	
	
	@RequestMapping(value="/Login/login")
	public ModelAndView Login(HttpSession session){
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("username") == null)
			mv.addObject("status1", "未登录");
		mv.setViewName("/Login/login");
		return mv;
 	}
}
