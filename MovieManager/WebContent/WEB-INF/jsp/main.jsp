<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>超级电影网</title>
<style type="text/css">
<!--
body {
	background-image: url(../../../../../../Desktop/%E8%B6%85%E7%BA%A7%E7%94%B5%E5%BD%B1.jpg);
	background-repeat: no-repeat;
}
-->
</style></head>
<body>
	<% 
	%>
	<div id="container" >
	 
	<div id="header" >
		<h1 align="center" style="margin-bottom:0;">超级电影网</h1>
	</div>
	 
	<div id="menu" style="height:200px;width:200px;float:left;">
		<b>选择一下</b><br>
		<a href="./movielist1">电影清单</a><br>
		<a href="./Top10">最受好评top10</a><br>
		<a href="./Top10">猜你喜欢</a></div>
	 
	<div id="content" style="width:400px;float:left;">
		<form action="./movieinfo" method="get">
			<input type="text" name="moviename">
			<input type="submit" value="搜索一下">
		</form></div>
	<div id="tologin"><a href="./login">	<%String islogin = "";
	if(session.getAttribute("islogin").equals("nologin")){
		islogin = "登录";
	}else{
		String username = (String)session.getAttribute("username");
		islogin = username;
	} out.print(islogin);%></a> </div>
	<div><a href="./register"> 注册</a>
	</div>
	</div>
</body>
</html>