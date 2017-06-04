<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<style type="text/css">
<!--
body {
	background-image: url(/MovieManager/img/movie.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
}
-->
</style></head>
<body>
	<div align="center">状态：${status1} </div>
	<p>

	<form  action="./haslogin"  method="post">
	  <div align="center">用户名： 
	    <input type="text" name="username">
	密码： 
	<input type="password" name="password">
	<input type="submit" value="登录">
	  </div>
	</form>
</body>
</html>