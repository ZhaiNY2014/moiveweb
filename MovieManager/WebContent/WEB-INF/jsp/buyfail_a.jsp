<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购买失败</title>
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
<div align="center">${message },
</div>
<div class="one" id="one">
  <h2 align="center">点我充值</h2>
</div>
<div class="two" id="two">
  <div align="center">
    <input type="button" onClick="window.location.href='./recharge'" value="充值">
  </div>
</div>

</body>
</html>