<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container" >
	<div id="header" >
		<h1 style="margin:0 auto;">超级电影网</h1></div>
	<div id="table" style="margin:0 auto;display:table-cell;vertical-align: middle;">
		<table border=1>
			<tr>
				<th>TOP</th>
				<th>电影名</th>
				<th>导演</th>
				<th>主演</th>
				<th>类型</th>
				<th>语言</th>
				<th>上映年份</th>
			</tr>
			<tr>
				<td>Top1</td>
		        <td>${movie1.moviename}</td>
		        <td>${movie1.director}</td>
		        <td>${movie1.actor }</td>
		        <td>${movie1.classification }</td>
		        <td>${movie1.language }</td>
		        <td>${movie1.showdate}</td>
		    </tr>
		    <tr>
				<td>Top2</td>
		        <td>${movie2.moviename}</td>
		        <td>${movie2.director}</td>
		        <td>${movie2.actor }</td>
		        <td>${movie2.classification }</td>
		        <td>${movie2.language }</td>
		        <td>${movie2.showdate}</td>
		    <tr>
				<td>Top3</td>
		        <td>${movie3.moviename}</td>
		        <td>${movie3.director}</td>
		        <td>${movie3.actor }</td>
		        <td>${movie3.classification }</td>
		        <td>${movie3.language }</td>
		        <td>${movie3.showdate}</td>
		    </tr>
		    <tr>
				<td>Top4</td>
		        <td>${movie4.moviename}</td>
		        <td>${movie4.director}</td>
		        <td>${movie4.actor }</td>
		        <td>${movie4.classification }</td>
		        <td>${movie4.language }</td>
		        <td>${movie4.showdate}</td>
		    </tr>
		    <tr>
				<td>Top5</td>
		        <td>${movie5.moviename}</td>
		        <td>${movie5.director}</td>
		        <td>${movie5.actor }</td>
		        <td>${movie5.classification }</td>
		        <td>${movie5.language }</td>
		        <td>${movie5.showdate}</td>
		    </tr>
		    <tr>
				<td>Top6</td>
		        <td>${movie6.moviename}</td>
		        <td>${movie6.director}</td>
		        <td>${movie6.actor }</td>
		        <td>${movie6.classification }</td>
		        <td>${movie6.language }</td>
		        <td>${movie6.showdate}</td>
		    </tr>
		    <tr>
				<td>Top7</td>
		        <td>${movie7.moviename}</td>
		        <td>${movie7.director}</td>
		        <td>${movie7.actor }</td>
		        <td>${movie7.classification }</td>
		        <td>${movie7.language }</td>
		        <td>${movie7.showdate}</td>
		    </tr>
		    <tr>
				<td>Top8</td>
		        <td>${movie8.moviename}</td>
		        <td>${movie8.director}</td>
		        <td>${movie8.actor }</td>
		        <td>${movie8.classification }</td>
		        <td>${movie8.language }</td>
		        <td>${movie8.showdate}</td>
		    </tr>
		</table></div>
		<div>
		<table>
		<tr>
		<td><form  action="./movielist4">
		<input type="submit" value="上一页">
		</form></td>
		<td><form  action="./main">
		<input type="submit" value="返回">
		</form></td>
		</tr>
		</table>	
		</div>
	</div>
</body>
</html>