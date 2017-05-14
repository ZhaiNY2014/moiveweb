package com.bm.web.model;

public class UserModel {
	private String username;
	private String password;
	private int userid;
	private int isownmovie;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getIsownmovie() {
		return isownmovie;
	}
	public void setIsownmovie(int isownmovie) {
		this.isownmovie = isownmovie;
	}
}
