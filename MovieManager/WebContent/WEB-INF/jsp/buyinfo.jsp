<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购买电影</title>
</head>
<body>
	<div id="container" >
	<div id="header" >
		<h1 style="margin-bottom:0;">超级电影网</h1></div>
	<div id="menu" style="height:200px;width:100px;float:left;">
		<% String username=(String)session.getAttribute("username");
		out.print(username);%><br>
		<% String account=(String)session.getAttribute("account");
		out.print(account);%>元<br>
		<a href="">我的电影</a><br>
		<a href="./recharge">我要充值</a><br></div>
		<div id="content" style="float:left;">
			<div id="movie" >
				<table border=1>
				<tr>
					<td>片名：<% String name=(String)session.getAttribute("moviename");
		out.print(name);%></td>
				</tr>
				<tr>
					<td>导演：<% String director=(String)session.getAttribute("moviedirector");
		out.print(director);%></td>
					<td>类型：<% String classification=(String)session.getAttribute("movieclass");
		out.print(classification);%></td>
				</tr>
				<tr>
					<td>主演：<% String actor=(String)session.getAttribute("movieactor");
		out.print(actor);%></td>
					<td>语言：<% String language=(String)session.getAttribute("movielanguage");
		out.print(language);%></td>
				</tr>
				<tr>
					<td>上映日期：<% String showdate=(String)session.getAttribute("moviedate");
		out.print(showdate);%></td>
					<td>评分：<% String score =(String)session.getAttribute("moviescore");
		out.print(score);%></td>
				</tr>
				<tr>
					<td>价格：<% String price=(String)session.getAttribute("movieprice");
		out.print(price);%></td>
					<td><form action="./buying">
					<input type="submit" value="购买">
					</form></td>
				</tr>
				</table>	
			</div>
		</div>
	</div>
	
</body>
</html>