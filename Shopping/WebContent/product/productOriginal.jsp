<!-- <style type="text/css">



img {
	image-rendering: auto;
	  position: relative;
}

  table{
   border-top: 1px solid #adadad;
 border-collapse : collapse;
  
  
   border-top: 1px solid #adadad;
 border-collapse : collapse;
  
           font-size: 20pt;
            text-align:center;
        /*     padding: 60px;
            width: 100% */
   }
   
tr,th, td{
border-bottom: 1px solid #adadad;
padding: 4px;
}
 

   
   
</style> -->







<!DOCTYPE HTML>
<html>

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


<head><title>연습</title>
<meta http-equiv="Content-Type" Content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<style type="text/css">

.title {width: 560px; text-align:center;}
h3 {color: #adadad; font-size: 14pt;}

.list {position: relative; width: 1400px; margin:0 auto;}
.list ul { list-style: none;}
.list ul li {position: relative; width: 340px; height: 340px; float: left; margin: 5px; overflow: hidden; text-align:center;}
.shadow {position: absolute ; top: 250px; background-color: rgba(0, 0, 0, .4); width: 340px; height: 340px; margin:0; transition: 0.5s;}
.shadow span {color: white; font-size: 12pt; text-align:center; padding: 20px; display: block;}
.detail {display: none; color: white; margin: a auto; padding: 20px;}
.detail p {text-align: left;}
.detail img {clear: both;}

.list ul li:hover {cursor: pointer;}
.list ul li:hover .shadow {top: 0px;}
.list ul li:hover span {display: none;}
.list ul li:hover .detail {display: block;}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">
<!--
	$(document).ready(function() {

	}); 
//-->
</script>
</head>
<body>
	
  <br><br><br><br><br><br><br><br><br>
	
<%--  
 <%if(session.getAttribute("infoproduct") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
  	<%for(ProductBean bean : beans){ %>
   		
   
 <a href="OrderDetailView.oo?code=<%=bean.getProduct_code() %>">
         	<img  style=" opacity:1;	width:200px; height:200px; " onmouseover="this.style.opacity='0.3'"    onmouseout="this.style.opacity='1'" 
         	 src="<%=bean.getProduct_image()%>"  /></a>
         
<p> 제품명: <%=bean.getProduct_name() %>	
   			가격: <%=bean.getProduct_cost() %>  
      
    	<%}%>
   <%}%>
 </p>  
 
  --%>
 
 <%-- 
   <table>
   
  <%if(session.getAttribute("infoproduct") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
  	<%for(ProductBean bean : beans){ %>
   		
   		<tr>
   		<th></th>
   			<th>제품명</th> 
   			<th>가격</th>
   			</tr>
   			
   			<tr> 		
   			<td >
         	<a href="OrderDetailView.oo?code=<%=bean.getProduct_code() %>">
         	<img  style="	width: 110px; height: 110px; "  src="<%=bean.getProduct_image()%>"/></a>
         	</td>
    	 <td>제품명: <%=bean.getProduct_name() %></td>	
   			<td>가격: <%=bean.getProduct_cost() %></td>   
      		
         </tr>
   	<%}%>
   <%}%>
</table>
 --%>

<%-- 
   
  <%if(session.getAttribute("infoproduct") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
  	<%for(ProductBean bean : beans){ %>
   		  
   		  
   			<a href="OrderDetailView.oo?code=<%=bean.getProduct_code() %>">
         	<img  style="	width: 110px; height: 110px; "  src="<%=bean.getProduct_image()%>"/></a>
    	제품명: <%=bean.getProduct_name() %>	
   			가격: <%=bean.getProduct_cost() %> 
      	
   			
   	<%}%>
   <%}%>
 
 
  --%>
 
<div class="list">

  <%if(session.getAttribute("infoproduct") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
  	<%for(ProductBean bean : beans){ %>
	<ul>
			<li>
			<a href="OrderDetailView.oo?code=<%=bean.getProduct_code() %>">
         	<img  style="	width: 340px; height:340px; "  src="<%=bean.getProduct_image()%>"/></a>
				<div class="shadow">
				
					<span>제품명: <%=bean.getProduct_name() %>	
   			가격: <%=bean.getProduct_cost() %> 
      	</span>
					<div class="detail">
						제품명: <%=bean.getProduct_name() %>	
   			가격: <%=bean.getProduct_cost() %>  ㅋㅋ설명고
      	</div>
				</div>
			</li>		
   	<%}%>
   <%}%>
 
 
 
 
 
 
 
 
</body>
</html>