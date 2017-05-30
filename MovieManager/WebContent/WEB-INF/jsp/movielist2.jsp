<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
				<th width="67">序号</th>
				<th width="194">电影名</th>
				<th width="212">导演</th>
				<th width="408">主演</th>
				<th width="280">类型</th>
				<th width="248">语言</th>
				<th width="208">上映年份</th>
			</tr>
			<tr>
				<td height="60">1</td>
		        <td>${movie1.moviename}</td>
		        <td>${movie1.director}</td>
		        <td>${movie1.actor }</td>
		        <td>${movie1.classification }</td>
		        <td>${movie1.language }</td>
		        <td>${movie1.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">2</td>
		        <td>${movie2.moviename}</td>
		        <td>${movie2.director}</td>
		        <td>${movie2.actor }</td>
		        <td>${movie2.classification }</td>
		        <td>${movie2.language }</td>
		        <td>${movie2.showdate}</td>
		    <tr>
				<td height="60">3</td>
		        <td>${movie3.moviename}</td>
		        <td>${movie3.director}</td>
		        <td>${movie3.actor }</td>
		        <td>${movie3.classification }</td>
		        <td>${movie3.language }</td>
		        <td>${movie3.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">4</td>
		        <td>${movie4.moviename}</td>
		        <td>${movie4.director}</td>
		        <td>${movie4.actor }</td>
		        <td>${movie4.classification }</td>
		        <td>${movie4.language }</td>
		        <td>${movie4.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">5</td>
		        <td>${movie5.moviename}</td>
		        <td>${movie5.director}</td>
		        <td>${movie5.actor }</td>
		        <td>${movie5.classification }</td>
		        <td>${movie5.language }</td>
		        <td>${movie5.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">6</td>
		        <td>${movie6.moviename}</td>
		        <td>${movie6.director}</td>
		        <td>${movie6.actor }</td>
		        <td>${movie6.classification }</td>
		        <td>${movie6.language }</td>
		        <td>${movie6.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">7</td>
		        <td>${movie7.moviename}</td>
		        <td>${movie7.director}</td>
		        <td>${movie7.actor }</td>
		        <td>${movie7.classification }</td>
		        <td>${movie7.language }</td>
		        <td>${movie7.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">8</td>
		        <td>${movie8.moviename}</td>
		        <td>${movie8.director}</td>
		        <td>${movie8.actor }</td>
		        <td>${movie8.classification }</td>
		        <td>${movie8.language }</td>
		        <td>${movie8.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">9</td>
		        <td>${movie9.moviename}</td>
		        <td>${movie9.director}</td>
		        <td>${movie9.actor }</td>
		        <td>${movie9.classification }</td>
		        <td>${movie9.language }</td>
		        <td>${movie9.showdate}</td>		    </tr>
		    <tr>
				<td height="60">10</td>
		        <td>${movie10.moviename}</td>
		        <td>${movie10.director}</td>
		        <td>${movie10.actor }</td>
		        <td>${movie10.classification }</td>
		        <td>${movie10.language }</td>
		        <td>${movie10.showdate}</td>
		    </tr>
		</table></div>
		<div>
		<table>
		<tr>
		<td><form  action="./movielist1">
		<input type="submit" value="上一页">
		</form></td>
		<td><form  action="./movielist3">
		<input type="submit" value="下一页">
		</form></td>
		</tr>
		</table>	
		</div>
	</div>
</div>
</body>
</html>