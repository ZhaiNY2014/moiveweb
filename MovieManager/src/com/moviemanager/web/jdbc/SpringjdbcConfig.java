package com.moviemanager.web.jdbc;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import com.mysql.jdbc.PreparedStatement;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	public ArrayList<MovieModel> SelectRank() throws Exception{
		PreparedStatement pstm = null;
		ResultSet rs = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		MovieModel movie = new MovieModel();
		ArrayList<MovieModel> movielist = new ArrayList<>();
		int[] hitlist = new int[50];
		//获取全部的hit值
		String sql1 = "Select * from movieinfo";// where rank <= 10";
			con = dbutil.Getcon();
			pstm = (PreparedStatement) con.prepareStatement(sql1);
			rs = pstm.executeQuery(sql1);
			int i = 0;
			while(rs.next()){
/*				String showdate = movie.getShowdate(rs.getInt("showdate"));
				movielist.add(new MovieModel(rs.getInt("movieid"), rs.getString("moviename"), 
						rs.getString("director"), rs.getString("actor"),rs.getString("classification"), rs.getString("country"), 
						rs.getString("language"),showdate, rs.getDouble("score")));
//				for(MovieModel movie1:movielist){
//					System.out.println(movie1.getMoviename());}
*/				//获取hit序列
				hitlist[i] = rs.getInt("hit");
				i++;
			}
			//排序
			hitlist = OrderHit(hitlist);
//			for(i = 0;i<hitlist.length;i++)
//				System.out.println(hitlist[i]);
			for(i = 0;i < 10;i++){
				String sql2 = "Select * from movieinfo where hit ="+ hitlist[i];
				pstm = (PreparedStatement) con.prepareStatement(sql2);
				rs = pstm.executeQuery(sql2);
				while(rs.next()){
					String showdate = movie.getShowdate(rs.getInt("showdate"));
					movielist.add(new MovieModel(rs.getInt("movieid"), rs.getString("moviename"), 
							rs.getString("director"), rs.getString("actor"),rs.getString("classification"), rs.getString("country"), 
							rs.getString("language"),showdate, rs.getDouble("score")));
				}
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
	
	public int UpdateUserAccountForBuy(int account_new, int userid) throws Exception{
		int rs = 0;
		String sql = "update users set account=account" + account_new + " where UserID=" + userid;
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
	
	public int UpdateUserAccountForRecharge(int recharge, String username) throws Exception{
		int rs = 0;
		String sql = "update users set account=account+" + recharge + " where username=" + "\"" + username + "\"";
		System.out.println(sql);
		PreparedStatement pstm = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeUpdate();
		//System.out.println(rs);
		return rs;
	}
	
	public int InsertBoughtlog(String username,String moviename) throws Exception{
		int rs=0;
		//String usernameuft8 = new String(username.getBytes("ISO-8859-1"),"utf-8");
		//String movienameuft8 = new String(moviename.getBytes("ISO-8859-1"),"utf-8");
		//System.out.println(movienameuft8);
		String sql = "insert into boughtlog values(null,\""+ username + "\",\""+ moviename + "\")" ;
		System.out.println(sql);
		PreparedStatement pstm = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeUpdate();
//		System.out.println(rs);
		if(rs > 0)
			pstm=(PreparedStatement) con.prepareStatement("update users set ");
		return rs;
	}
	
	public int[] OrderHit(int[] hitlist){
		int[] hitlist_O;
		hitlist_O = hitlist;
		int size = hitlist_O.length;
		int temp;
		for(int i = 0;i < size;i++){
			int k = i;
			for(int j = size - 1;j>i;j--){
				if(hitlist_O[j] > hitlist_O[k])
					k=j;
			}
			temp = hitlist_O[i];
			hitlist_O[i] = hitlist_O[k];
			hitlist_O[k] = temp;
		}
		return hitlist_O;
	}
	
	public void AddHit(String moviename) throws Exception{
		PreparedStatement pstm = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		String movienameutf8 = new String(moviename.getBytes("ISO-8859-1"),"utf-8");
		String sql = "update movieinfo set hit = hit + 1 where moviename = \"" + movienameutf8 + "\"";
		System.out.println(sql);
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		pstm.executeUpdate();
	}
	
	public int Register(String username,String password) throws Exception{
		int rs=0;
		PreparedStatement pstm = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		String usernameutf8 = new String(username.getBytes("ISO-8859-1"),"utf-8");
		String passwordutf8 = new String(password.getBytes("ISO-8859-1"),"utf-8");
		
		String sql = "insert into users values(null,\""+usernameutf8+"\",\""+passwordutf8+"\",0,0)";
		System.out.println(sql);
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeUpdate();
		return rs;
	}
	
	public ArrayList<MovieModel> MovieList(int page) throws Exception{
		ArrayList<MovieModel> movielist = new ArrayList<>();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		MovieModel movie = new MovieModel();

		int min = 0;
		int max = 0;
		if(page == 1){
			min = 0;
			max = 10;
		}else if(page == 2){
			min = 10;
			max = 20;
		}else if(page == 3){
			min = 20;
			max = 30;
		}else if(page == 4){
			min = 30;
			max = 40;
		}else if(page == 5){
			min = 40;
			max = 50;
		}
		String sql = "SELECT * FROM movieinfo where movieid >"+min+" and movieid <="+max;
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeQuery(sql);
		
		while(rs.next()){
			String showdate = movie.getShowdate(rs.getInt("showdate"));
			movielist.add(new MovieModel(rs.getInt("movieid"), rs.getString("moviename"), 
					rs.getString("director"), rs.getString("actor"),rs.getString("classification"), rs.getString("country"), 
					rs.getString("language"),showdate, rs.getDouble("score")));
		}
		
		return movielist;
	}
	
	public String SelectUserMovie(String username) throws Exception{
		ArrayList<MovieModel> movielist = new ArrayList<>();
		String mylist = "";
		PreparedStatement pstm = null;
		ResultSet rs = null;
		SpringjdbcConfig dbutil = new SpringjdbcConfig();
		Connection con = null;
		
		String usernameutf8 = new String(username.getBytes("ISO-8859-1"),"utf-8");
		String sql = "Select moviename from boughtlog where username = \""+ usernameutf8 + "\"";
		System.out.println(sql);
		
		con = dbutil.Getcon();
		pstm = (PreparedStatement) con.prepareStatement(sql);
		rs = pstm.executeQuery(sql);
		
		while(rs.next()){
			mylist = mylist + rs.getString("moviename") + " ";
		}
		
		return mylist;
	}
}
