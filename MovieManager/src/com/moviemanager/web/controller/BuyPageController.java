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
		if(session.getAttribute("islogin")!=null &&session.getAttribute("islogin").toString().equals("is")){//判断是否已登录
			//判断余额足够支付
			SpringjdbcConfig sjc = new SpringjdbcConfig();
//			UserModel user = sjc.SelectUser(session.getAttribute("username").toString());
//			UserModel user = new UserModel();
			int account = Integer.valueOf(session.getAttribute("account").toString()).intValue();  
			int userid = Integer.valueOf(session.getAttribute("userid").toString());
			if(account >= 10){
				//更新Account
				account -=10;
				int rs1 = sjc.UpdateUserAccount(account, userid);
				if(rs1 > 0){
					//写入一条记录
					int rs2 = sjc.InsertBoughtlog(session.getAttribute("username").toString(), session.getAttribute("moviename").toString());
					if(rs2 <=0)
						mv.setViewName("/buyfail");
					else
						mv.setViewName("buysuccess");
				}else
					mv.setViewName("/buyfail");
			}else
				mv.setViewName("/buyfail");
		}else{
			mv.setViewName("/buyfail");
		}
			
		return mv;
	}
}
