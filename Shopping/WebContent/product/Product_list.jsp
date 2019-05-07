<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="net.product.db.ProductBean"%>
<%@page improt="net.product.db.ProductDAO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<ProductBean> beans = (List<ProductBean>) session.getAttribute("productbean");
	%>
	<%
		ProductBean bean = (ProductBean) request.getAttribute("ProductList");
		ProductDAO PD_code = (ProductDAO) request.getAttribute("Product_code");
		ProductDAO PD_id = (ProductDAO) request.getAttribute("Product_id");
	%>
	<table border="1">
		<tr>
			<td>코드</td>
			<td>상품이름</td>
			<td>가격</td>
			<td>재고</td>
			<td>상품등록일</td>
		</tr>
		<%
			for (ProductBean bean : beans) {
		%>
		<tr>
			<td><a
				href="ProductDetailAction.mo?id=<%=bean.getProduct_code()%>"> <%=bean.getProduct_code()%>
			</a></td>
			<td><%=bean.getProduct_name()%></td>
			<td><%=bean.getProduct_count()%></td>
			<td><%=bean.getProduct_price()%></td>
			<td><%=bean.getProduct_date()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<input type="button" value="수정" onclick="ProductUpdateAction.po" />
</body>
</html>