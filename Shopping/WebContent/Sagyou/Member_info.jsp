<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@page import="java.util.List"%>
<%@page import="net.member.db.MemberBean"%>
<%request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 상세보기</title>
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
	}
	
	
	 body{
      background-image: url("./Sagyou/1313.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      
   }

</style>
<script type="text/javascript">

	function back(){
		window.history.back();
	}

</script>
</head>
<body>

<br><br><br><br><br><br><br><br><br>
   <table border=1 width=300 style = "margin:auto">
      <tr>
         <td class="aa"><center>ID</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_id()%></td>
      </tr>
      <tr>
          <td class="aa"><center>PASS</center> </font></td>
          <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_pw()%></td>
      </tr>
      <tr>
          <td class="aa"><center>E-MAIL</center> </font></td>
          <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_email()%></td>
      </tr>
      <tr>
          <td class="aa"><center>NAME</center> </font></td>
          <td ><%=((MemberBean)session.getAttribute("memberDetail")).getMember_name()%></td>
      </tr>
      <tr>
          <td class="aa"><center>IDENTIFICATION NUM</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_jumin()%></td>
      </tr>
      <tr>
         <td class="aa"><center>BIRTH</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_birth()%></td>
      </tr>
      <tr>
         <td class="aa"><center>ADDRESS</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_address()%></td>
      </tr>
      <tr>
        <td class="aa"><center>PHONE</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_phone()%></td>
      </tr>
      <tr>
        <td class="aa"><center>POINT</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_point()%></td>
      </tr>
      <tr>
        <td class="aa"><center>DATE</center> </font></td>
         <td><%=((MemberBean)session.getAttribute("memberDetail")).getMember_date()%></td>
      </tr>
      <tr>
         <td colspan=2 align = "center">
         <input type = "button" value = "BACK" onclick="back()"style="width:80pt; height:30pt; font-size:18pt; background-color:transparent;"/></td>
      </tr>
   </table>
</body>
</html>