package com.moviemanager.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.moviemanager.web.jdbc.SpringjdbcConfig;

import com.moviemanager.web.model.MovieModel;

@Controller
public class MovieInfoController {
	
	@RequestMapping(value = "/movieinfo")
	public ModelAndView MovieInfo(@RequestParam(value = "moviename")String moviename) throws Exception{
		ModelAndView mv = new ModelAndView();
		MovieModel movie = new MovieModel();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		movie = sjc.SelectMoiveName(moviename);
		
		mv.addObject("movie", movie);
		mv.setViewName("movieinfo");
		return mv;
	}
}
