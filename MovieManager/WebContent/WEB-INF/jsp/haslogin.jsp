<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>登录成功</title>
<style type="text/css">
<!--

-->
</style></head>
<body>
<div class="container">
	<div class="row clearfix" align="center">
		<div class="col-md-12 column">
			<p>
				 登录成功！
			</p>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
				 欢迎！   ${user}   点击回到主页面
			</p> 
			<a class="btn btn-default btn-block" href="./main" role="button">返回</a>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
				 点击查看我的影片
			</p>
			 <a class="btn btn-default btn-block" href="./mylist" role="button">我的影片</a>
		</div>
	</div>
</div>



<!-- <div class="one" id="one">
  <div align="center">登录成功！
  </div>
  <p align="center">
欢迎！   ${user}   点击回到主页面</div>
<form action="./main" method="post">
  <div class="two" id="two">
    <div align="center">
      <input type="submit" value="返回">
    </div>
  </div>

</form><p>
<a href="./mylist"> 查看我已经有的影片</a>
 -->
</body>
</html>