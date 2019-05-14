<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "net.product.db.ProductBean" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<style type="text/css">
	img{
		image-rendering:auto;
	}
	
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/style.css" />
</head>
<body>


	<div id="container">
		
		<div><jsp:include page="/header.jsp" flush="false"></jsp:include></div>
	
				<br><br><br><br><br><br><br><br><br><br>
			<center>
		<div><jsp:include page="productDetail.jsp" flush="false"></jsp:include></div>
	 </center>
		<div><jsp:include page="/bottom1.jsp" flush="false"></jsp:include></div>
		<div><jsp:include page="/bottom.jsp" flush="false"></jsp:include></div>
			

	</div>




</body>
</html>