package com.moviemanager.web.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.model.UserModel;




@Controller
public class LoginController {
	
	@RequestMapping(value="/Login/login")
	public ModelAndView Login(@RequestParam(value="username",required=false) String username, @RequestParam(value="password",required=false) String password){
		Map<String,Object> userdate = new HashMap<>();
			userdate.put("username", username);
			/*if(username.equals("zzz"))
				System.out.println("1");*/
		ModelAndView mv = new ModelAndView();
		mv.addObject("username", username);
			return mv;

	}	
	
}
