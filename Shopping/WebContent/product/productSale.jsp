<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.List"%>
<%@page import="net.product.db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%

	ProductBean bean = (ProductBean)session.getAttribute("detailOrder"); 
  	int count= bean.getProduct_count();
  	int cost=bean.getProduct_cost();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품주문</title>
<script type="text/javascript">
					function myFunction() {
  					
  					var x= parseInt(document.getElementById("Order_count").value);  
  					var y ="<%=cost%>"; 
  					document.getElementById("demo").innerHTML ="합계:"+(x*y);
  					
  					var point= parseInt(document.getElementById("Order_count").value);  
  					var y ="<%=cost%>"; 
  					document.getElementById("point").innerHTML ="적립포인트:"+(x*y)/1000;
  				 	
					}
	</script>

</head>

<style type="text/css">
body {
	background-color: #f1f1f1;
}

table {
	border-top: 1px solid #adadad;
	border-collapse: collapse;
	border-top: 1px solid #adadad;
	border-collapse: collapse;
	font-size: 20pt;
	width: 100%
}

tr, th, td {
	border-bottom: 1px solid #adadad;
	padding: 4px;
}
</style>
<body onload="myFunction()">

	<center>

		<%if(session.getAttribute("detailOrder") == null){ %>
		<h3>상품이 없습니다.</h3>
		<% }else{%>

		<table>
			<tr>
				<th>
				<a href=" img "><img style="width: 110px; height: 110px;"
					src="<%=bean.getProduct_image()%>"></a>
					 </th>
					<th> <%=bean.getProduct_name() %></th>
				<th>상품 가 격: <%=cost %></th>
				<th>개수: <select id="Order_count" onchange="myFunction()">
						<%for(int i=1;i<=count;i++){ %>
						<option value="<%=i %>" name="Order_count">
							<%=i%></option>
						<%} %>
				</select>
				</th>
				<th id="demo"></th>
				<th id=point></th>
				<th><a href="장바구니 ㄱㄱ"><button>장바구니에 담기</button></a> <a
					href="OrderOrderAction.po"><button>구입 하기</button></a></th>
			</tr>



		</table>
		<%}%>
		<%-- 

  <%if(session.getAttribute("detailOrder") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
	   	<tr>
      		<td colspan="4"><img src="<%=bean.getProduct_image()%>"></td>
      	</tr>
      	<tr>
      		
      		<td>상품 가 격: <%=cost %></td>
      		<td>개수:
      		
      			<select id="Order_count" onchange = "myFunction()">
      				<%for(int i=1;i<=count;i++){ %>
      				<option value="<%=i %>" name="Order_count"> <%=i%></option>
      				<%} %>
      				
      			</select>
      			
      		</td> 
      		<td id="demo">	
      		</td>
      		</td> 
      		<td id="point">	
      		</td>
      		<td>
      		<a href="장바구니 ㄱㄱ"><button>장바구니에 담기</button></a>
      		<a href="OrderOrderAction.po"><button>구입 하기</button></a>
      		</td>
      		
    	  
    	</tr>
	</table>
	

   <%}%>
 --%>
	</center>
</body>
</html>