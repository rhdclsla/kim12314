<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{
		text-align : center;
	}
</style>
</head>
<body>
<div id="container">
<div><jsp:include page="header.jsp" flush="false"></jsp:include></div></div><br>
<div><h2>관리자 페이지 입니다.</h2><hr>
<a href = "ProductListAction.po">상품리스트</a><br><br>
<a href = "MemberListViewAction.mo">회원리스트</a><br><br>
<a href = "Product_list.po">매출현황</a><br><br>
<a href = "Product_list.po">배송리스트.</a><br><br>
</div>
</body>
</html>