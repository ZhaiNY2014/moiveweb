<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>登录</title>
<style type="text/css">
<!--

-->
</style></head>
<body>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p class="lead text-center">
				  <strong>状态</strong> ${status1}
			</p>
			<form class="form-horizontal" role="form" action="./haslogin"  method="post">
				<div class="form-group">
					 <label for="username" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="username" name="username"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="password" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="password"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">登录</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>



	<!-- <div align="center">状态：${status1} </div>
	<p>

	<form  action="./haslogin"  method="post">
	  <div align="center">用户名： 
	    <input type="text" name="username">
	密码： 
	<input type="password" name="password">
	<input type="submit" value="登录">
	  </div>
	</form> -->
</body>
</html>