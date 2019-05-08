<%@page import="java.util.List"%>
<%@page import="net.product.db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%List<ProductBean> beans = (List<ProductBean>)session.getAttribute("infoproduct"); 
   
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품주문</title>
</head>
<style type="text/css">

  table{
      width:1000px;
         
   }
   
   td{
      text-align:center;
      font-weight : bold;
      font-size: 2rem;
   }
   
   .aa{
      font-size:3rem;
      color:black;
   }
   
   .b{
      font-size:4rem;
   
   }
   
   
    body{
      background-image: url("./Sagyou/1313.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      
   }
</style>
<body>

<center>
   <table border=1 >
      <tr><td class="b" colspan=3>상품정보</td></tr>
 

  <%if(session.getAttribute("infoproduct") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
  	<%for(ProductBean bean : beans){ %>
   		<tr>
      		<td class = "aa" style = "color:black;">
      		<img src="<%=bean.getProduct_image()%>"></td>
    	    <td>제품명: <%=bean.getProduct_name() %></td>
        	<td>가격: <%=bean.getProduct_cost() %></td>
        	
       	
         </tr>
   	<%}%>
   <%}%>
</table>
</center>
</body>
</html>