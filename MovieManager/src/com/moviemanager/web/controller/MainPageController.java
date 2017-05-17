package com.moviemanager.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainPageController {
	@RequestMapping(value = "/")
	public ModelAndView MainPage(HttpSession session){
		ModelAndView mv = new ModelAndView();
		session.setAttribute("islogin", "nologin");
		mv.setViewName("main");
		return mv;
	}
	@RequestMapping(value = "/main")
	public ModelAndView MainPage2(HttpSession session){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	}
}
