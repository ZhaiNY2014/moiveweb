<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购买电影</title>
</head>
<body>
	<div id="container" >
	<div id="header" >
		<h1 style="margin-bottom:0;">超级电影网</h1></div>
	<div id="menu" style="height:200px;width:200px;float:left;">
		用户名<br>
		我的余额<br>
		<a href="">我的电影</a><br>
		<a href="">我要充值</a><br></div>
		<div id="content" style="width:400px;float:left;">
			<div id="movie" >
				<table border=1>
				<tr>
					<td>电影名</td>
				</tr>
				<tr>
					<td>导演名</td>
					<td>类型</td>
				</tr>
				<tr>
					<td>主演名</td>
					<td>语言</td>
				</tr>
				<tr>
					<td>上映日期</td>
					<td>评分</td>
				</tr>
				<tr>
					<td>价格</td>
					<td><button type="submit" name="buy">购买</button></td>
				</tr>
				</table>	
			</div>
		</div>
	</div>
</body>
</html>