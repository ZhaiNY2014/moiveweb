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
	background-image: url(../../../../../../Desktop/movie.jpg);
}
-->
</style></head>
<body>
<div class="one" id="one">
  <h2 align="center">${message }
  </h2>
</div>
<div class="two" id="two">
<form action="./main" method="post">
  <div align="center">
    <input type="submit" value="返回">
  </div>
</form>
</div>
</body>
</html>