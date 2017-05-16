<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>这里是电影清单</title>
</head>
<body>
	<div id="container" >
	<div id="header" >
		<h1 style="margin:0 auto;">超级电影网</h1></div>
	<div id="table" style="margin:0 auto;display:table-cell;vertical-align: middle;">
		<table border=1>
			<tr>
				<th>评分</th>
				<th>电影名</th>
				<th>导演</th>
				<th>主演</th>
				<th>类型</th>
				<th>语言</th>
				<th>上映国家</th>
				<th>上映年份</th>
				<th>我想看</th>
			</tr>
			<tr>
				<td>${movie.score }</td>
		        <td>${movie.moviename}</td>
		        <td>${movie.director }</td>
		        <td>${movie.actor }</td>
		        <td>${movie.classification }</td>
		        <td>${movie.language}</td>
		        <td>${movie.country }</td>
		        <td>${movie.showdate }</td>
		        <td>购买(${movie.price}元)</td>
		    </tr>
		    
		</table></div>
	</div>
</body>
</html>