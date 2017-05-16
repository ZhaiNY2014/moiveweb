package com.moviemanager.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainPageController {
	@RequestMapping(value = {"/main","/"})
	public ModelAndView MainPage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	}
}
