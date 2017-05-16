package com.moviemanager.web.model;

import java.io.Serializable;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class UserModel implements Serializable{
//	private int userid;
	@Size(min=6,max=16)
	private String username;
	@Size(min=6,max=16)
	private String password;
	@NotEmpty
	private boolean isownmovie;
	private int account;
/*	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
*/	public String getUsername() {
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
	public boolean isIsownmovie() {
		return isownmovie;
	}
	public void setIsownmovie(boolean isownmovie) {
		this.isownmovie = isownmovie;
	}
	
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public UserModel(){
		
	}
}
