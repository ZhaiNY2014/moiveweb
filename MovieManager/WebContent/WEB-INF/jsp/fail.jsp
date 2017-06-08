<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>登录失败！</title>
<style type="text/css">

</style>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h3>
				登录失败
			</h3>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
				 点击返回首页
			</p>
			<div>
			<table>
				<tr>
					<td><form  action="./main">
					<input class="btn btn-default" type="submit" value="返回">
					</form></td>
				</tr>
			</table>	
		</div>
		</div>
	</div>
</div>


<!-- <div class="one" id="one">
  <h1 align="center">登录失败！点击返回主页</h1>
</div>

<div align="center">
  <input type="submit" onClick="window.location.href='./login'" value="返回" >
</div> -->
</body>
</html>