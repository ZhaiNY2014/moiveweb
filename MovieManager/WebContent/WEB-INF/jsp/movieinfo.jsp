<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,com.moviemanager.web.controller.MovieInfoController" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>超级电影网-电影详情</title>
<style type="text/css">

</style></head>
<body>

	<div class="row clearfix">
		<div class="col-md-12 column">
			<h1 align="center">
				超级电影网
			</h1>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="col-md-2 column"></div>
			<div class="col-md-8 column">
				<table class="table">
					<thead>
						<tr>
							<th>
								评分
							</th>
							<th>
								电影名
							</th>
							<th>
								导演
							</th>
							<th>
								主演
							</th>
							<th>
								类型
							</th>
							<th>
								语言
							</th>
							<th>
								上映国家
							</th>
							<th>
								上映年份
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${movie.score }</td>
					      	<td>${movie.moviename}</td>
					        <td>${movie.director }</td>
					        <td>${movie.actor }</td>
					        <td>${movie.classification }</td>
					        <td>${movie.language}</td>
					        <td>${movie.country }</td>
					        <td>${movie.showdate }</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-2 column"></div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="col-md-1 column"></div>
			<div class="col-md-1 column"></div>
			<div class="col-md-1 column"></div>
			<div class="col-md-6 column">
				<form  action="./buyinfo" method="post">
					<input class="btn btn-default btn-block" type="submit" value="想看">
					</form>
				
			</div>
			<div class="col-md-1 column"></div>
			<div class="col-md-1 column"></div>
			<div class="col-md-1 column"></div>
		</div>
	</div>


<!--	<div id="container" >
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
</div>-->
</body>
</html>