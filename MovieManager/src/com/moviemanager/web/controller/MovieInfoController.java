package com.moviemanager.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.moviemanager.web.jdbc.SpringjdbcConfig;

import com.moviemanager.web.model.MovieModel;

@Controller
@SessionAttributes(value={"movie"})
public class MovieInfoController {
	
	@ModelAttribute("movie")
	public MovieModel initMovie(){
		MovieModel movie = new MovieModel();
		return movie;
	}
	
	
	
	@RequestMapping(value = "/movieinfo",method = RequestMethod.GET)
	public ModelAndView MovieInfo(@RequestParam(value = "moviename")String moviename,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MovieModel movie = new MovieModel();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		movie = sjc.SelectMoiveName(moviename);
		
		mv.addObject("movie", movie);
		session.setAttribute("moviename", movie.getMoviename());
		session.setAttribute("moviedirector", movie.getDirector());
		session.setAttribute("movieactor", movie.getActor());
		session.setAttribute("movieclass", movie.getClassification());
		session.setAttribute("movielanguage", movie.getLanguage());
		session.setAttribute("moviedate", movie.getShowdate());
		session.setAttribute("moviescore", movie.getScore_D().toString());
		session.setAttribute("movieprice", movie.getprice_i().toString());
		mv.setViewName("movieinfo");
		return mv;//new ModelAndView(new RedirectView("movieinfo"));
	}
}
