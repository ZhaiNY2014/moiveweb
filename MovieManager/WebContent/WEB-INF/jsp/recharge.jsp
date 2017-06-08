<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>充值</title>
<style type="text/css">

</style>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" role="form" action="./hasrecharge" method="get">
				<div class="form-group">
					 <label for="用户名" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="text" name="username"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="金额" class="col-sm-2 control-label">要充值的金额</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="recharge" name="recharge"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">充值</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>



<!-- <form action="./hasrecharge" method="get">
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
</form> -->
</body>
</html>