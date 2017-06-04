package com.moviemanager.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;

@Controller
public class RegisterController {
	
	@RequestMapping(value="/hasregister",method=RequestMethod.POST)
	public ModelAndView Login(@RequestParam(value="username",required=true) String username, 
			@RequestParam(value="password",required=true) String password) throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		int rs = sjc.Register(username, password);
		
		if(rs > 0){
			mv.addObject("message", "注册成功");
			mv.setViewName("registersuccess");
		}else{
			mv.addObject("message", "注册失败，用户已存在");
			mv.setViewName("registerfail");
		}
		return mv;
	}
	
	@RequestMapping(value="/register")
	public ModelAndView Login(){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("register");
		
		return mv;
	}
}
