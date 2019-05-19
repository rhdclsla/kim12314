<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="net.product.db.ProductBean"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정</title>
<script type="text/javascript">
	//이미지 미리보기 할려고함
</script>
<style type="text/css">
img {
	image-rendering: auto;
}

table {
 border-top: 1px solid #adadad;
 border-collapse : collapse;
}
tr,th, td{
border-bottom: 1px solid #adadad;
padding: 4px;
}
table, tr, td {
	vertical-align: top;
	text-align: center;
	font-size: 20pt;
}

th {
	/*        border: 1px solid #000000; */
	font-weight: bold;
	vertical-align: top;
}

a {
	font-size: 20pt;
	color: #000000;
}
</style>
</head>
<body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/style.css" />

	<jsp:useBean id="now" class="java.util.Date" />
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />


<form method="post" action="ProductUpdateAction.po" name = "modifyForm">
<input type="hidden" name = "image" id = "image" value="<%=request.getParameter("image") %>" readonly/>

	<br><br><br><br>
	<table >
		<tr>
			<th colspan="2">상품수정</th>
		</tr>	
			
		<tr>
		<th> 상품코드 </th>	
		<td><input type="text" name="code" id="code" style="width:100%; border: 0; font-size: 18pt;"value =<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_code()%> readonly/></td>
		</tr>
		
		
		<tr>
			<th>상품분류</th>
			<td><input type="text" name="category" id="category" style="width:100%; border: 0; font-size: 18pt;"  value =<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_category()%> ></td>		
		</tr>

		<tr>
			<th>상품이름</th>
	<td ><input type="text" name="name" id="name" style="width:100%; border: 0; font-size: 18pt;" value =<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_name()%>></td>
			</tr>

		<tr>
			<th>원가</th>
<td><input type="text" name="cost" id="cost" style="width:100%; border: 0; font-size: 18pt;" value =<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_cost()%>></td>
		</tr>


		

		<tr>
			<th>판매가</th>
		<td><input type="text" id="price" name="price" style="width:100%; border: 0; font-size: 18pt;"  value =<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_price()%>  ></td>	
		</tr>

		<tr>


	<tr>
			<th>순수익</th>
			<td><%=((ProductBean)session.getAttribute("detailProduct")).getProduct_price()-((ProductBean)session.getAttribute("detailProduct")).getProduct_cost()%></td>	
		</tr>

		<tr>
			<th>수량</th>
		 <td ><input type="text" id="count" name="count" style="width:100%; border: 0; font-size: 18pt;" value = <%=((ProductBean)session.getAttribute("detailProduct")).getProduct_count() %>></td>
  		</tr>


		<tr>
			<th>&emsp;상품상세 설명&emsp;</th>
      <td><textarea rows="3" cols="20" name="detail" id="detail"  style="width:100%; border: 0; font-size: 18pt;"<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_detail()%>></textarea></td>
		
		</tr>



		<tr>

			<th>상품등록일</th>
		<td >
         <input type="text" name="date" id="date" value="${today}" style="width:100%; border: 0; font-size: 20pt;" readonly />
      </td>
      		</tr>



		<tr>
			<th colspan="2"><a href="imageDetail.po">이미지 </a></th>
	</tr>
	
	
	<tr>
	<th colspan="2">
      
  	  현재 사진<img style="	width: 300px; height: 300px; " src="<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_image()%>">
			수정 후 사진<img style="	width: 300px; height: 300px; "  src="<%=request.getParameter("image") %>">
				
    	 </th>
      </tr>



	</table>

	<br>
	<br>
	
	<input type="submit" style="background-color:transparent;" value="확인" >
	</form>
	

</body>
</html>