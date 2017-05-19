package com.moviemanager.web.controller;

import java.util.ArrayList;

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
		
		sjc.AddHit(moviename);
		
		mv.setViewName("movieinfo");
		return mv;
	}
	
	@RequestMapping(value="movielist1")
	public ModelAndView MovieList1() throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		ArrayList<MovieModel> moviearray = new ArrayList<>();
		moviearray = sjc.MovieList(1);
		
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
				
				mv.setViewName("movielist1");
		
		return mv;
	}
	
	@RequestMapping(value="movielist2")
	public ModelAndView MovieList2() throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		ArrayList<MovieModel> moviearray = new ArrayList<>();
		moviearray = sjc.MovieList(2);
		
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
				
				mv.setViewName("movielist2");
		
		return mv;
	}
	
	@RequestMapping(value="movielist3")
	public ModelAndView MovieList3() throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		ArrayList<MovieModel> moviearray = new ArrayList<>();
		moviearray = sjc.MovieList(3);
		
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
				
				mv.setViewName("movielist3");
		
		return mv;
	}
	
	@RequestMapping(value="movielist4")
	public ModelAndView MovieList4() throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		ArrayList<MovieModel> moviearray = new ArrayList<>();
		moviearray = sjc.MovieList(4);
		
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
				
				mv.setViewName("movielist4");
		
		return mv;
	}
	
	@RequestMapping(value="movielist5")
	public ModelAndView MovieList5() throws Exception{
		ModelAndView mv = new ModelAndView();
		SpringjdbcConfig sjc = new SpringjdbcConfig();
		ArrayList<MovieModel> moviearray = new ArrayList<>();
		moviearray = sjc.MovieList(5);
		
		//取movie对象
				MovieModel movie1 = new MovieModel();
				MovieModel movie2 = new MovieModel();
				MovieModel movie3 = new MovieModel();
				MovieModel movie4 = new MovieModel();
				MovieModel movie5 = new MovieModel();
				MovieModel movie6 = new MovieModel();
				MovieModel movie7 = new MovieModel();
				MovieModel movie8 = new MovieModel();
				
				movie1 = moviearray.get(0);
				movie2 = moviearray.get(1);
				movie3 = moviearray.get(2);
				movie4 = moviearray.get(3);
				movie5 = moviearray.get(4);
				movie6 = moviearray.get(5);
				movie7 = moviearray.get(6);
				movie8 = moviearray.get(7);
				
				mv.addObject("movie1", movie1);
				mv.addObject("movie2", movie2);
				mv.addObject("movie3", movie3);
				mv.addObject("movie4", movie4);
				mv.addObject("movie5", movie5);
				mv.addObject("movie6", movie6);
				mv.addObject("movie7", movie7);
				mv.addObject("movie8", movie8);
				
				mv.setViewName("movielist5");
		
		return mv;
	}
}
