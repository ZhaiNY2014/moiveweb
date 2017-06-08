<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>电影清单</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h1 class="text-center">
				超级电影网
			</h1>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-bordered">
				<tr>
				<th ></th>
				<th>电影名</th>
				<th>导演</th>
				<th>主演</th>
				<th>类型</th>
				<th>语言</th>
				<th>上映年份</th>
			</tr>
			<tr>
				<td >31</td>
		        <td>${movie1.moviename}</td>
		        <td>${movie1.director}</td>
		        <td>${movie1.actor }</td>
		        <td>${movie1.classification }</td>
		        <td>${movie1.language }</td>
		        <td>${movie1.showdate}</td>
		    </tr>
		    <tr>
				<td >32</td>
		        <td>${movie2.moviename}</td>
		        <td>${movie2.director}</td>
		        <td>${movie2.actor }</td>
		        <td>${movie2.classification }</td>
		        <td>${movie2.language }</td>
		        <td>${movie2.showdate}</td>
		    <tr>
				<td >33</td>
		        <td>${movie3.moviename}</td>
		        <td>${movie3.director}</td>
		        <td>${movie3.actor }</td>
		        <td>${movie3.classification }</td>
		        <td>${movie3.language }</td>
		        <td>${movie3.showdate}</td>
		    </tr>
		    <tr>
				<td >34</td>
		        <td>${movie4.moviename}</td>
		        <td>${movie4.director}</td>
		        <td>${movie4.actor }</td>
		        <td>${movie4.classification }</td>
		        <td>${movie4.language }</td>
		        <td>${movie4.showdate}</td>
		    </tr>
		    <tr>
				<td >35</td>
		        <td>${movie5.moviename}</td>
		        <td>${movie5.director}</td>
		        <td>${movie5.actor }</td>
		        <td>${movie5.classification }</td>
		        <td>${movie5.language }</td>
		        <td>${movie5.showdate}</td>
		    </tr>
		    <tr>
				<td >36</td>
		        <td>${movie6.moviename}</td>
		        <td>${movie6.director}</td>
		        <td>${movie6.actor }</td>
		        <td>${movie6.classification }</td>
		        <td>${movie6.language }</td>
		        <td>${movie6.showdate}</td>
		    </tr>
		    <tr>
				<td >37</td>
		        <td>${movie7.moviename}</td>
		        <td>${movie7.director}</td>
		        <td>${movie7.actor }</td>
		        <td>${movie7.classification }</td>
		        <td>${movie7.language }</td>
		        <td>${movie7.showdate}</td>
		    </tr>
		    <tr>
				<td >38</td>
		        <td>${movie8.moviename}</td>
		        <td>${movie8.director}</td>
		        <td>${movie8.actor }</td>
		        <td>${movie8.classification }</td>
		        <td>${movie8.language }</td>
		        <td>${movie8.showdate}</td>
		    </tr>
		    <tr>
				<td >39</td>
		        <td>${movie9.moviename}</td>
		        <td>${movie9.director}</td>
		        <td>${movie9.actor }</td>
		        <td>${movie9.classification }</td>
		        <td>${movie9.language }</td>
		        <td>${movie9.showdate}</td>		    </tr>
		    <tr>
				<td >40</td>
		        <td>${movie10.moviename}</td>
		        <td>${movie10.director}</td>
		        <td>${movie10.actor }</td>
		        <td>${movie10.classification }</td>
		        <td>${movie10.language }</td>
		        <td>${movie10.showdate}</td>
		    </tr>
			</table>
		</div>
		<div>
			<table>
				<tr>
					<td><form  action="./movielist3">
					<input class="btn btn-default" type="submit" value="上一页">
					</form></td>
					<td><form  action="./movielist5">
					<input class="btn btn-default" type="submit" value="下一页">
					</form></td>
					<td><form  action="./main">
					<input class="btn btn-default" type="submit" value="返回">
					</form></td>
				</tr>
			</table>	
		</div>
	</div>
</div>


<!-- <div id="container" >
	<div id="header" >
		<blockquote>
		  <h1 align="center" style="margin:0 auto;">超级电影网</h1>
	  </blockquote>
	<div id="table" style="margin:0 auto;display:table-cell;vertical-align: middle;">
		<table border=1>
			<tr>
				<th width="67"></th>
				<th width="194">电影名</th>
				<th width="212">导演</th>
				<th width="408">主演</th>
				<th width="280">类型</th>
				<th width="248">语言</th>
				<th width="208">上映年份</th>
			</tr>
			<tr>
				<td height="60">31</td>
		        <td>${movie1.moviename}</td>
		        <td>${movie1.director}</td>
		        <td>${movie1.actor }</td>
		        <td>${movie1.classification }</td>
		        <td>${movie1.language }</td>
		        <td>${movie1.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">32</td>
		        <td>${movie2.moviename}</td>
		        <td>${movie2.director}</td>
		        <td>${movie2.actor }</td>
		        <td>${movie2.classification }</td>
		        <td>${movie2.language }</td>
		        <td>${movie2.showdate}</td>
		    <tr>
				<td height="60">33</td>
		        <td>${movie3.moviename}</td>
		        <td>${movie3.director}</td>
		        <td>${movie3.actor }</td>
		        <td>${movie3.classification }</td>
		        <td>${movie3.language }</td>
		        <td>${movie3.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">34</td>
		        <td>${movie4.moviename}</td>
		        <td>${movie4.director}</td>
		        <td>${movie4.actor }</td>
		        <td>${movie4.classification }</td>
		        <td>${movie4.language }</td>
		        <td>${movie4.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">35</td>
		        <td>${movie5.moviename}</td>
		        <td>${movie5.director}</td>
		        <td>${movie5.actor }</td>
		        <td>${movie5.classification }</td>
		        <td>${movie5.language }</td>
		        <td>${movie5.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">36</td>
		        <td>${movie6.moviename}</td>
		        <td>${movie6.director}</td>
		        <td>${movie6.actor }</td>
		        <td>${movie6.classification }</td>
		        <td>${movie6.language }</td>
		        <td>${movie6.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">37</td>
		        <td>${movie7.moviename}</td>
		        <td>${movie7.director}</td>
		        <td>${movie7.actor }</td>
		        <td>${movie7.classification }</td>
		        <td>${movie7.language }</td>
		        <td>${movie7.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">38</td>
		        <td>${movie8.moviename}</td>
		        <td>${movie8.director}</td>
		        <td>${movie8.actor }</td>
		        <td>${movie8.classification }</td>
		        <td>${movie8.language }</td>
		        <td>${movie8.showdate}</td>
		    </tr>
		    <tr>
				<td height="60">39</td>
		        <td>${movie9.moviename}</td>
		        <td>${movie9.director}</td>
		        <td>${movie9.actor }</td>
		        <td>${movie9.classification }</td>
		        <td>${movie9.language }</td>
		        <td>${movie9.showdate}</td>		    </tr>
		    <tr>
				<td height="60">40</td>
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
		<td><form  action="./movielist3">
		<input type="submit" value="上一页">
		</form></td>
		<td><form  action="./movielist5">
		<input type="submit" value="下一页">
		</form></td>
		<td><form  action="./main">
		<input type="submit" value="返回">
		</form></td>
		</tr>
		</table>	
		</div>
	</div>
</div>-->
</body>
</html>