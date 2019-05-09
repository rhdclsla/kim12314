<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<div id="header" class="header">

	<%if(session.getAttribute("id")!=null) {%>
		<%if(session.getAttribute("id").equals("admin")){ %>
			<a href="AdminPage.mo">ADMINPAGE</a>
		<%}%>	
			<a href="MemberLogoutAction.mo">LOGOUT</a>
			<a href="basket.jsp">BASKET</a> 
			<a href="ProductOrderAction.po">ORDER</a>
	<%}else{ %>	
			<a href="MemberLoginForm.mo">LOGIN</a>
			<a href="MemberAddView.mo">JOIN</a>	
	<%} %>
			<a href="ReviewList.re">NOTICE</a>
			<a href="BoardList.bo">Q&A</a> 
			<a href="ReviewList.re">REVIEW</a>	
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
               <li><a href="ProductInfoAction.po?category=ORIGINAL">ORIGINAL</a></li>
               <li><a href="#">MOCHAGOLD</a></li>
               <li><a href="#">ARABIVCA100</a></li>
               <li><a href="#">MAXIMCAFE</a></li>
               <li><a href="#">TASSIMO</a></li>
            </ul>
         </li>
         <li><a href="event.jsp">EVENT</a></li>
         <li><a href="NewsList.ne">NEWS&MEDIA</a></li>
         <li><a href="#">CUSTOMER</a></li>
      </ul>
   </div>

</body>
</html>