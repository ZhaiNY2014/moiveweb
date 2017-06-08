package com.moviemanager.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;

@Controller
public class MylistController {
	
	@RequestMapping(value="/mylist")
	public ModelAndView Mylist(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		String mylist = "";
		mylist = sjc.SelectUserMovie(session.getAttribute("username").toString());
		System.out.println("mylist"+ mylist);
		if(mylist.equals(""))
			mylist = "没有购买过电影";
		else
			mylist = "拥有的电影有："+mylist;
		mv.addObject("mylist", mylist);
		mv.setViewName("mylist");
		
		return mv;
	}
	
}
