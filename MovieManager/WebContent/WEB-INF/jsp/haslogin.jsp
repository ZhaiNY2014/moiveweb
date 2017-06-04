<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录成功</title>
<style type="text/css">
<!--
body {
	background-image: url(/MovieManager/img/success.jpg);
	background-repeat: no-repeat;
	background-size: 100%
}
-->
</style></head>
<body>
<div class="one" id="one">
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
</body>
</html>