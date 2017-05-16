package com.moviemanager.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Top10Controller {
	
	@RequestMapping(value = "/Top10")
	public ModelAndView Top10(){
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
}
