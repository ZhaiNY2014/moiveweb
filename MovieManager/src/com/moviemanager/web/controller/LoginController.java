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
	
	@RequestMapping(value="/haslogin",method=RequestMethod.POST)
	public ModelAndView Login(@RequestParam(value="username",required=true) String username, 
			@RequestParam(value="password",required=true) String password,
			UserModel user,
			HttpSession session,@CookieValue(value="JSESSIONID", defaultValue="")String sessionid) 
					throws Exception{
		
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		UserModel user_db = sjc.SelectUser(username);
		//验证是否有用户已经登录
		if(session.getAttribute("islogin").toString().equals("nologin")){
			if(user_db.getUsername().equals(username)  //用户名通过
					&& user_db.getPassword().equals(password)  //密码通过
					){
				session.setAttribute("session-userid", sessionid);
				session.setAttribute("userid", user_db.getUserid_I().toString());
				session.setAttribute("username", username);
				session.setAttribute("account", user_db.getAccount_I().toString());
				session.setAttribute("islogin", "islogin");
				mv.addObject("user", user.getUsername());
				mv.setViewName("/haslogin");
			}else{
				mv.setViewName("/fail");
			}

		}
			return mv;
	}
	
	
	@RequestMapping(value="/login")
	public ModelAndView Login(HttpSession session){
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("islogin").equals("nologin")){
			mv.addObject("status1", "未登录");
			//session.setAttribute("islogin", "islogin");
			mv.setViewName("/login");
		}else
			mv.setViewName("/main");
		return mv;
 	}
}
