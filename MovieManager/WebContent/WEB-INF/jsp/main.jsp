<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>超级电影网</title>
</head>
<body>
	<div id="container" >
	 
	<div id="header" >
		<h1 style="margin-bottom:0;">超级电影网</h1></div>
	 
	<div id="menu" style="height:200px;width:200px;float:left;">
		<b>选择一下</b><br>
		<a href="./movieinfo">电影清单</a><br>
		<a href="./Top10">最受好评top10</a><br>
		<a href="">猜你喜欢</a></div>
	 
	<div id="content" style="width:400px;float:left;">
		<form action="" method="get">
			<input type="text" name="moviename">
			<input type="submit" value="搜索一下">
		</form></div>
	</div>
</body>
</html>