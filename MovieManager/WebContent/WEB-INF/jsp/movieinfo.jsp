<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,com.moviemanager.web.controller.MovieInfoController" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>超级电影网-电影详情</title>
<style type="text/css">
<!--
body {
	background-image: url(../../../../../../Desktop/%E8%B6%85%E7%BA%A7%E7%94%B5%E5%BD%B1.jpg);
	background-repeat: no-repeat;
}
-->
</style></head>
<body>
	<div id="container" >
	<div id="header" >
		<blockquote>
		  <h1 align="center" style="margin:0 auto;">超级电影网</h1>
	  </blockquote>
	<div id="table" style="margin:0 auto;display:table-cell;vertical-align: middle;">
		<table border=1>
			<tr>
				<th width="99">评分</th>
				<th width="151">电影名</th>
				<th width="240">导演</th>
				<th width="324">主演</th>
				<th width="203">类型</th>
				<th width="134">语言</th>
				<th width="105">上映国家</th>
				<th width="148">上映年份</th>
				<th width="201">我想看</th>
			</tr>
			<tr>
				<td height="60">${movie.score }</td>
		        <td>${movie.moviename}</td>
		        <td>${movie.director }</td>
		        <td>${movie.actor }</td>
		        <td>${movie.classification }</td>
		        <td>${movie.language}</td>
		        <td>${movie.country }</td>
		        <td>${movie.showdate }</td>
		        <td><input type="button" onClick="window.location.href='./buyinfo'" value="购买"> (${movie.price}元)</td>
		    </tr>
		    
		</table></div>
	</div>
</body>
</html>