package com.moviemanager.web.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.model.UserModel;




@Controller
public class LoginController {
	
	@RequestMapping(value="/Login/haslogin",method=RequestMethod.POST)
	public ModelAndView Login(@RequestParam(value="username",required=true) String username, 
			@RequestParam(value="password",required=true) String password,
			UserModel user,
			@CookieValue(value="JSESSIONID",defaultValue="")String session){
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("username", username);
		mv.addObject("user", user.getUsername());
		mv.setViewName("/Login/haslogin");
			return mv;
	}
	@RequestMapping(value="/Login/login")
	public ModelAndView Login(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("status1", "未登录");
		mv.setViewName("/Login/login");
		return mv;
 	}
}
