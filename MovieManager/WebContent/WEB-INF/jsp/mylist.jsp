<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的电影</title>
<style type="text/css">
<!--
body {
	background-image: url(../../../../../../Desktop/%E8%B6%85%E7%BA%A7%E7%94%B5%E5%BD%B1.jpg);
	background-repeat: no-repeat;
}
-->
</style></head>
<body>
<div class="one" id="one">
  <div align="center">用户
    <% String username = (String)session.getAttribute("username");
out.print(username); %>
  </div>
  <p align="center">
${mylist}
<p></div>
<form  action="./main">
  <div class="two" id="two">
    <div align="center">
      <input type="submit" value="返回">
    </div>
  </div>
</form>
</body>
</html>