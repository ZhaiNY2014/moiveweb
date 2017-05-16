package com.moviemanager.web.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class MovieModel implements Serializable{
	private String moviename;
	private String director;
	private String actor;
	private String classification;
	private String country;
	private String language;
	private int showdate;
	private int score;
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
	public int getShowdate() {
		return showdate;
	}
	public void setShowdate(int showdate) {
		this.showdate = showdate;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public MovieModel(){
	}
}
