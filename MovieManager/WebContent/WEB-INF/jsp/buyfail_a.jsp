<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>购买失败</title>
<style type="text/css">

</style></head>
<body>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h3>
				余额不足，购买失败<br>
			</h3>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
				 点我充值
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




<!-- <div align="center">${message },
</div>
<div class="one" id="one">
  <h2 align="center">点我充值</h2>
</div>
<div class="two" id="two">
  <div align="center">
    <input type="button" onClick="window.location.href='./recharge'" value="充值">
  </div>
</div> -->

</body>
</html>