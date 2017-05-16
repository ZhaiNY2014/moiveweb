package com.moviemanager.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BuyPageController {

	@RequestMapping(value = "/buy")
	public ModelAndView BuyPage(){
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
}
