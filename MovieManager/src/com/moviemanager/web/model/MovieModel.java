package com.moviemanager.web.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

@Component
public class MovieModel implements Serializable{
	private int movieId;
	private String moviename = "";
	private String director = "";
	private String actor = "";
	private String classification = "";
	private String country = "";
	private String language = "";
	private String showdate = "";
	private double score = 0.00;
	private int price = 10;
	private int hit;
	
	public MovieModel(){
	}
	
	public MovieModel(int movieid,String moviename,String director,String actor,
			String classification,String country,String language,String showdate,double score){
		this.movieId = movieid;
		this.moviename = moviename;
		this.director = director;
		this.actor = actor;
		this.classification = classification;
		this.country = country;
		this.language = language;
		this.showdate = showdate;
		this.score = score;

	}
	/**
	 * true == is empty
	 * false == not empty
	 * @return boolean
	 */
	public boolean IsNull(){
		if(moviename == "" || director =="" || actor == "" || 
				classification == ""|| country == "" || language == "")
			return true;
		else
			return false;
	}
	
	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	/**
	 * 
	 * @return Integer movieId_I
	 */
	public Integer getMoiveId_I(){
		Integer movieId_I = new Integer(movieId);
		return movieId_I;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getShowdate() {
		return showdate;
	}
	
	public String getShowdate(int showdate){
		Integer year = showdate/100;
		Integer day = showdate%100;
		return year.toString()+"-"+day.toString();
	}
	public void setShowdate(int showdate) {
		Integer year = showdate/100;
		Integer day = showdate%100;
		this.showdate = year.toString()+"-"+day.toString();
	}
	public double getScore() {
		return score;
	}
	public Double getScore_D(){
		Double score_D = new Double(score);
		return score_D;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public int getprice(){
		return price;
	}
	/**
	 * 
	 * @return return price_i
	 */
	public Integer getprice_i(){
		Integer price_i = new Integer(price);
		return price_i;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
}
