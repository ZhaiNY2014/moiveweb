<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>超级电影网</title>
<style type="text/css">

</style></head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <h1 class="text-center">
				超级电影网
			</h1>
			<div class="row clearfix">
				<div class="col-md-2 column">
					<ul class="nav nav-stacked nav-tabs">
						<li class="active">
							 <a href="#">选择一下</a>
						</li>
						<li>
							 <a href="./movielist1">电影清单</a>
						</li>
						<li>
							 <a href="./Top10">最受好评top10</a>
						</li>
						<li>
							 <a href="./Top10">猜你喜欢</a>
						</li>
						<li>
							 <a href="./mylist">我的电影</a>
						</li>
					</ul>
				</div>
				<div class="col-md-8 column">
					<form role="form" action="./movieinfo" method="get">
						<div class="form-group">
							 <label for="moviename">想看什么电影</label>
							 <input type="text" class="form-control" id="moviename" name="moviename" />
						</div>
						<button type="submit" class="btn btn-default">搜索一下</button>
					</form>
				</div>
				<div class="col-md-2 column" align="right">
					<form class="form-horizontal">
						<div class="form-group">
						
							<a class="btn btn-default btn-link" href="./login" role="button">
	<% String islogin = "";
	if(session.getAttribute("islogin").equals("nologin")){
		islogin = "登录";
	}else{
		String username = (String)session.getAttribute("username");
		islogin = username;
	} out.print(islogin);%></a>
						</div>
						<div class="form-group">
							<a class="btn btn-default btn-link" href="./register" role="button">注册</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

	<!-- 
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
	<div id="tologin"><a href="./login">	
	
	String islogin = "";
	if(session.getAttribute("islogin").equals("nologin")){
		islogin = "登录";
	}else{
		String username = (String)session.getAttribute("username");
		islogin = username;
	} out.print(islogin);
	
	</a> </div>
	<div><a href="./register"> 注册</a>
	</div>
	</div> -->
</body>
</html>