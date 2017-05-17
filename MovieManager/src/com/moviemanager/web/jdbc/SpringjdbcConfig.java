package com.moviemanager.web.jdbc;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import com.mysql.jdbc.PreparedStatement;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.moviemanager.web.model.MovieModel;
import com.moviemanager.web.model.UserModel;
	

public class SpringjdbcConfig {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/moviemanager?useUnicode=true&characterEncoding=UTF-8";
	private String jdbcname = "com.mysql.jdbc.Driver";
	private String dbusername = "root";
	private String dbpassword = "123456";
	
	public Connection Getcon() throws Exception{
		Class.forName(jdbcname);
		Connection con = ( Connection )DriverManager.getConnection(dbUrl,dbusername,dbpassword);
		return con;
	}
	
	public void Closecon(java.sql.Connection con)throws Exception{
		if(con != null)
			con.close();
	}
	/*@Bean
	public DataSource mysqlDataSource(){
		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("com.mysql.jdbc.Driver");
		datasource.setUrl("jdbc:mysql://localhost:3306/moviemanager");
		datasource.setUsername("root");
		datasource.setPassword("123456");
		return datasource;
	}*/
	/**
	 * 这个函数用来查询单个的电影信息
	 * @param moviename
	 * @return MovieModel
	 * @throws Exception 
	 */
	public MovieModel SelectMoiveName(String moviename) throws Exception{
		String movienameutf8 = new String(moviename.getBytes("ISO-8859-1"),"utf-8");
		String sql = "Select * from movieinfo where moviename=\"" + movienameutf8 + "\"";
		System.out.println(sql + "," + movienameutf8);
		PreparedStatement pstm = null;
		ResultSet rs = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		MovieModel movie = new MovieModel();
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeQuery(sql);
		
		while(rs.next()){
			movie.setMovieId(rs.getInt("movieid"));
			movie.setMoviename(rs.getString("moviename"));
			movie.setDirector(rs.getString("director"));
			movie.setActor(rs.getString("actor"));
			movie.setClassification(rs.getString("classification"));
			movie.setCountry(rs.getString("country"));
			movie.setLanguage(rs.getString("language"));
			movie.setShowdate(rs.getInt("showdate"));
			movie.setScore(rs.getDouble("score"));
		}	
		
		return movie;
	}
	
	/**
	 * 该函数用于top10的搜索
	 * @return ArrayList<MovieModel>
	 */
	public ArrayList<MovieModel> SelectRank(){
		String sql = "Select * from movieinfo where rank <= 10";
		PreparedStatement pstm = null;
		ResultSet rs = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		MovieModel movie = new MovieModel();
		ArrayList<MovieModel> movielist = new ArrayList<>();
		try{
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeQuery(sql);
		
		while(rs.next()){
			movie.setMovieId(rs.getInt("movieid"));
			movie.setMoviename(rs.getString("moviename"));
			movie.setDirector(rs.getString("director"));
			movie.setActor(rs.getString("actor"));
			movie.setClassification(rs.getString("classification"));
			movie.setCountry(rs.getString("country"));
			movie.setLanguage(rs.getString("language"));
			movie.setShowdate(rs.getInt("showdate"));
			movie.setScore(rs.getInt("score"));
			movielist.add(movie);
		}	
		}catch(SQLException ex){
			System.out.println("SQLException:"+ex.getMessage());
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return movielist;
	}
	
	public UserModel SelectUser(String username) throws Exception{
		UserModel user = new UserModel();
		String usernameuft8 = new String(username.getBytes("ISO-8859-1"),"utf-8");
		String sql = "Select * from users where username=\"" + usernameuft8 + "\"";
		System.out.println(sql + "," + usernameuft8);
		PreparedStatement pstm = null;
		ResultSet rs = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeQuery(sql);
		
		while(rs.next()){
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("userpassword"));
			user.setIsownmovie(rs.getBoolean("isownmovie"));
			user.setAccount(rs.getInt("account"));
			user.setUserid(rs.getInt("UserID"));
		}
		return user;
	}
	
	public int UpdateUserAccount(int account_new, int userid) throws Exception{
		int rs = 0;
		String sql = "update users set account=" + account_new + "where UserID=" + userid;
		System.out.println(sql);
		PreparedStatement pstm = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeUpdate();
		System.out.println(rs);
		return rs;
	}
	
	public int InsertBoughtlog(String username,String moviename) throws Exception{
		int rs=0;
		String sql = "insert into boughtlog values(null,\""+ username + "\",\""+ moviename + "\")" ;
		System.out.println(sql);
		PreparedStatement pstm = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeUpdate();
		System.out.println(rs);
		return rs;
	}
}
