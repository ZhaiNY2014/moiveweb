package com.moviemanager.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;
import com.moviemanager.web.model.UserModel;

@Controller
public class BuyPageController {

	@RequestMapping(value = "/buy")
	public ModelAndView BuyPage(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("islogin").toString().equals("islogin")){//判断是否已登录
			//判断余额足够支付
			SpringjdbcConfig sjc = new SpringjdbcConfig();
//			UserModel user = sjc.SelectUser(session.getAttribute("username").toString());
//			UserModel user = new UserModel();
			int account = Integer.valueOf(session.getAttribute("account").toString()).intValue();  
			int userid = Integer.valueOf(session.getAttribute("userid").toString());
			if(account >= 10){
				//更新Account
				account -=10;
				int rs1 = sjc.UpdateUserAccountForBuy(-10, userid);
				if(rs1 > 0){//扣款成功
					//写入一条记录
					Integer account_i = new Integer(account);
					session.setAttribute("account", account_i.toString());
					int rs2 = sjc.InsertBoughtlog(session.getAttribute("username").toString(), session.getAttribute("moviename").toString());
					if(rs2 <=0)
						System.out.println("log fail");
					else
						mv.setViewName("buysuccess");
				}else
					mv.addObject("message", "db error");
					mv.setViewName("/buyfail_a");
			}else
				mv.addObject("message", "余额不足");
				mv.setViewName("/buyfail_a");
		}else{
			mv.setViewName("/buyfail_l");//未登录，返回登录
		}
			
		return mv;
	}
}
