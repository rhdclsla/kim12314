<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%request.setCharacterEncoding("euc-kr"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value = "${now}" pattern = "yyyy-MM-dd HH:mm:ss" var = "today"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm.jsp</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="./Sagyou/RegularMethod2.js"></script>
<style type="text/css">

    body{
      background-image: url("./Sagyou/1313.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      
   }
 
</style>
</head>
<body>

<form action="MemberAddAction.mo" method = "post"  name="acount" onsubmit="call()">
<input type = "hidden" name = "date" id = "date" value = "${today}" readonly/>
<center>
  <br><br><br><br><br>
     <b> <table border=1 style="background-color:transparent;"> 
         <tr>
            <td colspan = "2">
            <font size=10><center>Member Information</center> </font>
            </td>
         </tr>
         <tr>
            <td class = "atrr"  align=center> <font size=5> ID : </td> </font>
            <td class = "atrr1"><input type = "text" id = "id" name = "id" maxlength="12" style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent; ">
                <span>4~12자리 영문 대소문자와 숫자로만 입력</span></td>
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5> PASS : </td> </font>
            <td class = "atrr1"><input type = "password" id = "pw" name = "pw" maxlength="12" style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;">
                <span>4~12자리 영문 대소문자와 숫자로만 입력</span></td>
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5>PASS-RE : </td> </font>
            <td><input type = "password" id = "checkpw" maxlength="12" style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;"></td>
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5>E-MAIL: </td> </font>
            <td><input type = "text" name = "email" id ="email" style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;"></td>
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5>NAME : </td> </font>
            <td><input type = "text" name = "name" id ="name" style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;"></td>
         </tr>
         
            <tr>
            <td colspan = "2">
          <font size=10><center>Privacy Information</center> </font>
            </td>
         </tr>
         
         <tr>
            <td class = "atrr" align=center> <font size=5> IDENTIFICATION NUM : </td> </font>
            <td class = "atrr1">
            <input type = "text" name = "jumin" id ="jumin" maxlength="6" style=" width:100pt; height:20pt; font-size:15pt; background-color:transparent;"/>
            <input type = "password" name = "jumin2" id ="jumin2" maxlength="7" onblur="calcul()" style=" width:100pt; height:20pt; font-size:15pt; background-color:transparent;"/>
               </td>
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5> BIRTH (AUTO) : </td></font>
            <td class = "atrr1"> 
                <input type="text" style="width:80px" id="year" name = "year"  style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;" readonly/>Y
                     <input type="text" style="width:80px" id="month" name = "month"  style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;" readonly/>M
              <input type="text" style="width:80px" id="day" name = "day"  style=" width:250pt; height:20pt; font-size:15pt; background-color:transparent;" readonly/>D
                    
            </td>   
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5> ADDRESS : </td></font>
            <td class = "atrr1"> 
                <input type = "text" name = "postcode" id = "postcode" style="width:70pt; height:20pt; font-size:10pt; background-color:transparent;" placeholder = "우편번호">
				<input type = "button" onclick = "execDaumPostcode()" value = "우편번호 찾기"><br>
				<input type = "text" name = "address1" id = "address1" style="width:150pt; height:20pt; font-size:10pt; background-color:transparent;" placeholder = "주소">
				<input type = "text" name = "address2" id = "address2" style="width:200pt; height:20pt; font-size:10pt; background-color:transparent;" placeholder = "상세주소">		 
            </td>   
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5>  PHONE: </td></font>
            <td> 
                <input type = "text" name = "phone" id = "phone" style="font-size:15pt; background-color:transparent;" placeholder = "000-0000-0000"/>
            </td>   
         </tr>
         <tr>
            <td class = "atrr" align=center> <font size=5>  POINT: </td></font>
            <td> 
                <input type = "text" name = "point" id = "point" value = "0" style="font-size:15pt; background-color:transparent;" readonly/>
            </td>   
         </tr>
         <tr >
            <td colspan = "2"  align = "center">
            <p>
           <b> <input type="submit" value="JOIN" style="width:60pt; height:30pt; font-size:18pt; background-color:transparent;"></b>
          &emsp; &emsp;  <b> <input type = "reset" value = "RESET" style="width:80pt; height:30pt; font-size:18pt; background-color:transparent;"></b>
                  </p>
               </td>
            </tr>  
      
      </table></b>
      </center>
      </form>


</body>
</html>