<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="net.product.db.*"%>

	<%
		ProductBean bean = (ProductBean) request.getAttribute("ProductList");
		ProductDAO PD=(ProductDAO)request.getAttribute("Product_code");
		
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품주문</title>
</head>
<body>

<center >
<h2>상품 구입</h2>
	<%
			if(bean==null){
				%>정보가없음
			<% }%>
<form method="post" action="Product_order.jsp" >
	<table border="1">
		<tr>
			<td> 
					가격: <%=request.getParameter("Product_price") %>
			</td>
			<td>
				수량: <input type="text" id="Order_count" name="Order_conut">개<br>
				합계: <input type="text" value="${Order_hap}" readonly>원
			</td>
		</tr>
		<tr>
			<td>
				상품 가격: <input type="text" value="${Product_price }" readonly>	
			</td>
			<td>
				<input type="submit" value="주문"><input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>