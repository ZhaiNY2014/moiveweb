package com.moviemanager.web.model;

import java.io.Serializable;

public class UserModel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2145516858482619768L;
	private int userid;
	//@Size(min=6,max=16)
	private String username;
	//@Size(min=6,max=16)
	private String password;
	//@NotEmpty
	private boolean isownmovie = false;
	private int account;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	/**
	 * 
	 * @return Integer userid_I
	 */
	public Integer getUserid_I(){
		Integer userid_I = new Integer(userid);
		return userid_I;
	}
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
	public boolean isIsownmovie() {
		return isownmovie;
	}
	public void setIsownmovie(boolean isownmovie) {
		this.isownmovie = isownmovie;
	}
	
	public int getAccount() {
		return account;
	}
	/**
	 * 
	 * @return Integer getaccount_I
	 */
	public Integer getAccount_I(){
		Integer getaccount_I = new Integer(account);
		return getaccount_I;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public UserModel(){
		
	}
}
