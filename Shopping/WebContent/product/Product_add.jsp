<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>


</head>
<body>
<%--
create table product( --상품등록
product_code int not null primary key, --상품코드
product_category VARCHAR2(20), --상품분류
product_name varchar2(20), --상품이름
product_count int, --수량
product_image varchar2(150), --사진
product_cost int, --원가
product_price int, --판매가
product_detail varchar2(1000), --상품설명
product_date date --등록일
); 
 
 --%>
<h2>상품등록</h2>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="date"/>

<form method="post" action="ProductAddAction.po">
<table border="1">
	<tr>
		<td>상품코드</td><td colspan="5"><input type="text" name="code" id="code"></td>
	</tr>
	<tr>
		<td>상품분류</td><td colspan="5"><input type="text" name="category" id="category"></td>
		
	</tr>
	<tr>
		<td>상품이름</td><td colspan="5"><input type="text" name="name" id="name"></td>
	</tr>
	<tr>
		<td>원가</td><td><input type="text" name="cost" id="cost"></td><td>판매가</td><td><input type="text" id="price" name="price"></td>
	</tr>
	<tr>
		<td colspan="6">상품상세 설명</td>
	</tr>
	<tr>
		<td colspan="6"><textarea rows="10" cols="110" name="detail" id="detail"></textarea></td>
	</tr>
	<tr>
		<td colspan="5"><a href="image.jsp">이미지</a></td>
		<td><%=request.getParameter("image")%></td>
		
		
			
	</tr>
	<tr>
		<td>수량</td><td colspan="3"><input type="text" id="count" name="count"></td><td>상품등록일</td>
		<td>
			<input type="text" name="date" id="date" value="${date }" readonly>
		</td>
	</tr>
	<tr align="left">
		<td><input type="submit" value="완료" ><input type="button" value="목록" onclick="List.jsp"></td>
	</tr>
</table>
</form>


</body>
</html>