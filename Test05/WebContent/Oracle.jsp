<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>

<%
	Connection conn = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	
	Boolean connect = false;
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"hr","1234");
		
		connect = true;
		conn.close();
		
	}catch(Exception e){
		connect = false;
		e.printStackTrace();
	}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(connect == true){ %>
		연결되었습니다.
		
	<% }else{%>
		연결에 실패하였습니다.
	<%}

%>

</body>
</html>