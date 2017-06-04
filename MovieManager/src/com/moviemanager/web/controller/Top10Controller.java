package com.moviemanager.web.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;
import com.moviemanager.web.model.MovieModel;

@Controller
public class Top10Controller {
	
	@RequestMapping(value = "/Top10")
	public ModelAndView Top10() throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		ArrayList<MovieModel> moviearray = new ArrayList<>();
		moviearray = sjc.SelectRank();
		//取movie对象
		MovieModel movie1 = new MovieModel();
		MovieModel movie2 = new MovieModel();
		MovieModel movie3 = new MovieModel();
		MovieModel movie4 = new MovieModel();
		MovieModel movie5 = new MovieModel();
		MovieModel movie6 = new MovieModel();
		MovieModel movie7 = new MovieModel();
		MovieModel movie8 = new MovieModel();
		MovieModel movie9 = new MovieModel();
		MovieModel movie10 = new MovieModel();
		
		movie1 = moviearray.get(0);
		movie2 = moviearray.get(1);
		movie3 = moviearray.get(2);
		movie4 = moviearray.get(3);
		movie5 = moviearray.get(4);
		movie6 = moviearray.get(5);
		movie7 = moviearray.get(6);
		movie8 = moviearray.get(7);
		movie9 = moviearray.get(8);
		movie10 = moviearray.get(9);
		
		mv.addObject("movie1", movie1);
		mv.addObject("movie2", movie2);
		mv.addObject("movie3", movie3);
		mv.addObject("movie4", movie4);
		mv.addObject("movie5", movie5);
		mv.addObject("movie6", movie6);
		mv.addObject("movie7", movie7);
		mv.addObject("movie8", movie8);
		mv.addObject("movie9", movie9);
		mv.addObject("movie10", movie10);
		
//		mv.addObject("moviearray", moviearray);
		mv.setViewName("Top10");
		return mv;
	}
}
