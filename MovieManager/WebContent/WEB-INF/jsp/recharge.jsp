<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>充值</title>
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
<form action="./hasrecharge" method="get">
<div class="one" id="one">
  <div align="center">要充值的用户名：
    <input type="text" name="username_r">
  </div>
</div>
<div class="two" id="two">
  <div align="center">要充值的金额：
    <input type="text" name="recharge">
  </div>
</div>
<div class="three" id="three">
  <div align="center">
    <input type="submit" value="充值">
  </div>
</div>
</form>
</body>
</html>