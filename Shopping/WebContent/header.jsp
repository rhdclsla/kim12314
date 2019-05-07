<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="css/style.css"/>
<style>
	#header{
		text-align : center;
	}
</style>
</head>
<body>
	<div id="header" class="header">
		<%if(session.getAttribute("id")!=null){ %>
				<a href="MemberLogoutAction.mo">LOGOUT</a>
				<a href="www.daum.net">BASKET</a> 
				<a href="ProductOrderAction.po">ORDER</a>
			<%}else{ %>
				<a href="MemberLoginForm.mo">LOGIN</a>
				<a href ="MemberAddView.mo">JOIN</a>
			<%} %>	
				<a href="www.nate.com">NOTICE</a>
				<a href="BoardList.bo">Q&A</a> 
				<a href="www.naver.com">REVIEW</a>
	</div>


	<div id="index">
		<a href="main.jsp"><img src="image/h1Logo.png" width="200px"
			height="70px"></a>
	</div>
	<div class="menubar">
		<ul>
			<li><a href="#">ABOUT MAXIM</a></li>
			<li><a href="#" id="current">PRODUCT</a>
				<ul>
					<li><a href="#">Sliders</a></li>
					<li><a href="#">Galleries</a></li>
					<li><a href="#">Apghghghps</a></li>
					<li><a href="#">Extensions</a></li>
				</ul></li>
			<li><a href="#">EVENT</a></li>
			<li><a href="#">NEWS&MEDIA</a></li>
			<li><a href="#">CUSTOMER</a></li>
		</ul>
	</div>
</body>
</html>