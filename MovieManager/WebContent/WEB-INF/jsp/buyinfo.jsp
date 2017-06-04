<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购买电影</title>
<style type="text/css">
<!--
body {
	background-image: url(/MovieManager/img/movie.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
}
#Layer1 {
	position:absolute;
	left:287px;
	top:100px;
	width:357px;
	height:304px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:20px;
	top:103px;
	width:150px;
	height:232px;
	z-index:2;
}
-->
</style></head>
<body>
	<div id="Layer1">
	  <div id="content" style="float:left;">
        <div id="movie" >
          <table border=1>
            <tr>
              <td width="93" height="44">片名：
                <% String name=(String)session.getAttribute("moviename");
		out.print(name);%></td>
            </tr>
            <tr>
              <td height="64">导演：
                <% String director=(String)session.getAttribute("moviedirector");
		out.print(director);%></td>
              <td width="255">类型：
                <% String classification=(String)session.getAttribute("movieclass");
		out.print(classification);%></td>
            </tr>
            <tr>
              <td height="48">主演：
                <% String actor=(String)session.getAttribute("movieactor");
		out.print(actor);%></td>
              <td>语言：
                  <% String language=(String)session.getAttribute("movielanguage");
		out.print(language);%></td>
            </tr>
            <tr>
              <td height="62">上映日期：
                <% String showdate=(String)session.getAttribute("moviedate");
		out.print(showdate);%></td>
              <td>评分：
                  <% String score =(String)session.getAttribute("moviescore");
		out.print(score);%></td>
            </tr>
            <tr>
              <td height="67">价格：
                <% String price=(String)session.getAttribute("movieprice");
		out.print(price);%></td>
              <td><form action="./buying">
                  <input name="submit" type="submit" value="购买">
              </form></td>
            </tr>
          </table>
        </div>
      </div>
	</div>
	<div id="Layer2">
	  <div id="menu" style="height:200px;width:100px;float:left;">
        <% String username=(String)session.getAttribute("username");
		out.print(username);%>
	    <br>
        <% String account=(String)session.getAttribute("account");
		out.print(account);%>
	    元<br>
        <a href="./mylist">我的电影</a><br>
        <a href="./recharge">我要充值</a><br>
      </div>
	</div>
	<div id="container" >
	<div id="header" >
		<h1 align="center" style="margin-bottom:0;">超级电影网</h1>
	</div>
	</div>
</body>
</html>