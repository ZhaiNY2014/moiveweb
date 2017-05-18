package com.moviemanager.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;

@Controller
public class RechargeController {
	
	@RequestMapping(value="/hasrecharge")
	public ModelAndView Recharge(HttpSession session,
			@RequestParam(value="username_r",required=true)String username_r,
			@RequestParam(value="recharge",required=true)String recharge) throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		Integer recharge_i = new Integer(recharge);
		Integer account_i = new Integer(session.getAttribute("account").toString());
		int rs = sjc.UpdateUserAccountForRecharge(recharge_i.intValue(),username_r);
		if(rs > 0){
			mv.addObject("rechargeresult", "充值成功");
			recharge_i = recharge_i + account_i;
			session.setAttribute("account", recharge_i.toString());
			
		}else{
			mv.addObject("rechargeresult", "充值失败");
		}
		
		mv.setViewName("/hasrecharge");
		return mv;
	}
	
	@RequestMapping(value="/recharge")
	public ModelAndView Recharge(){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/recharge");
		return mv;
	}
}
