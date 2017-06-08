<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-3.2.1.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>购买电影</title>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
			<h1 align="center">
				超级电影网
			</h1>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-2 column">
				<ul class="nav nav-tabs nav-stacked">
					<li class="active" >
						<a href="#">
							<% String username=(String)session.getAttribute("username");
								out.print(username); %>
								<br><br>
							我的余额：<br><% String account=(String)session.getAttribute("account");
						out.print(account); %>元	
						</a>
					</li>
					<li>
						 <a href="./mylist">我的电影</a>
					</li>
					<li >
						 <a href="./recharge">我要充值</a>
					</li>
				</ul>
			</div>
			
			<div class="col-md-8 column">
				<table class="table">
					<tr>
						<td colspan="3" rowspan="7">
							<h1 class="text-center">
								<%String score =(String)session.getAttribute("moviescore");
								out.print(score); %>
							</h1>
						</td>
						<td>
							电影名
						</td>
						<td>
							<% String name=(String)session.getAttribute("moviename");
							out.print(name);%>
						</td>
						<td>
							
						</td>
						<td>
						
						</td>
						<td colspan="3" rowspan="7">
							
						</td>
					</tr>
					<tr>
						<td>
							导演
						</td>
						<td colspan="3">
							<%String director=(String)session.getAttribute("moviedirector");
							out.print(director); %>
						</td>
					</tr>
					<tr>
						<td>
							主演
						</td>
						<td colspan="3">
							<%String actor=(String)session.getAttribute("movieactor");
							out.print(actor); %>
						</td>
					</tr>
					<tr>
						<td>
							类型
						</td>
						<td>
						<%String classification=(String)session.getAttribute("movieclass");
						out.print(classification); %>
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
					</tr>
					<tr>
						<td>
							语言
						</td>
						<td>
							<%String language=(String)session.getAttribute("movielanguage");
							out.print(language); %>
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
					</tr>
					<tr>
						<td>
							上映时间
						</td>
						<td>
							<%String showdate=(String)session.getAttribute("moviedate");
							out.print(showdate); %>
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
					</tr>
					<tr>
						<td colspan="4" rowspan="2">
							<a class="btn btn-default btn-block" href="./buying" role="button">购买</a>
						</td>
					</tr>
					<tr>
						<td>
						
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
					</tr>
				</table>
			</div>
			<div class="col-md-2 column"></div>
		</div>
	</div>




<!--	<div id="Layer1">
	  <div id="content" style="float:left;">
        <div id="movie" >
          <table border=1>
            <tr>
              <td width="93" height="44">片名：
                 String name=(String)session.getAttribute("moviename");
		out.print(name);%></td>
            </tr>
            <tr>
              <td height="64">导演：
                 String director=(String)session.getAttribute("moviedirector");
		out.print(director);%></td>
              <td width="255">类型：
                 String classification=(String)session.getAttribute("movieclass");
		out.print(classification);%></td>
            </tr>
            <tr>
              <td height="48">主演：
                 String actor=(String)session.getAttribute("movieactor");
		out.print(actor);%></td>
              <td>语言：
                   String language=(String)session.getAttribute("movielanguage");
		out.print(language);%></td>
            </tr>
            <tr>
              <td height="62">上映日期：
                 String showdate=(String)session.getAttribute("moviedate");
		out.print(showdate);%></td>
              <td>评分：
                   String score =(String)session.getAttribute("moviescore");
		out.print(score);%></td>
            </tr>
            <tr>
              <td height="67">价格：
                 String price=(String)session.getAttribute("movieprice");
		out.print(price);%></td>
              <td><form action="./buying">
                  <input name="submit" type="submit" value="购买">
              </form></td>
            </tr>
          </table>
        </div>
      </div>
	</div>
	<div id="Layer2">
	  <div id="menu" style="height:200px;width:100px;float:left;">
         String username=(String)session.getAttribute("username");
		out.print(username);%>
	    <br>
         String account=(String)session.getAttribute("account");
		out.print(account);%>
	    元<br>
        <a href="./mylist">我的电影</a><br>
        <a href="./recharge">我要充值</a><br>
      </div>
	</div>
	<div id="container" >
	<div id="header" >
		<h1 align="center" style="margin-bottom:0;">超级电影网</h1>
	</div>
	</div>-->
</body>
</html>