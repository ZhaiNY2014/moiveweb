<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的电影</title>
</head>
<body>
用户<% String username = (String)session.getAttribute("username");
out.print(username); %><p>
${mylist}<p>
<form  action="./main">
		<input type="submit" value="返回">
		</form>
</body>
</html>