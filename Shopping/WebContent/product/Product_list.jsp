<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="net.product.db.ProductBean"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div><jsp:include page="/header.jsp" flush="false"></jsp:include></div>
<%
	List<ProductBean> beans = (List<ProductBean>)session.getAttribute("productbean");
%>
<table border="1">
	<tr>
		<td>코드</td>
		<td>상품이름</td>
		<td>가격</td>
		<td>재고</td>
		<td>상품등록일</td>
		<td>상품삭제</td>
	</tr>
	<%for(ProductBean bean : beans){ %>
	<tr>
		<td><a href="ProductDetailAction.po?code=<%=bean.getProduct_code() %>">
         	<%=bean.getProduct_code() %>
         	</a></td>
		<td><%=bean.getProduct_name() %></td>
		<td><%=bean.getProduct_count() %></td>
		<td><%=bean.getProduct_price() %></td>
		<td><%=bean.getProduct_date() %></td>
		<td><a href = "ProductDeleteAction.po?code=<%=bean.getProduct_code() %>">
			Delete
			</a></td>
	</tr>
	<%} %>
</table>
<a href="ProductAddForm.po"><button>등록</button></a>
<a href="AdminPage.mo"><button>돌아가기</button></a>

</body>
</html>