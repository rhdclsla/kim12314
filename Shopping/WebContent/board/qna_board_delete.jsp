<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>
<html>
<head>
<title>MVC �Խ���</title>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center><form name="deleteForm" action="./BoardDeleteAction.bo?num=<%=num %>" 
	method="post">
<table>
<tr>
	<td style="font-size:17pt;">
		<font size=5>�� ��й�ȣ : </font>
	</td>
	<td >
		<input name="BOARD_PASS" type="password" style="font-size:17pt;">
	</td>
</tr>
<tr>
	<td colspan=2 align=center>
	<font size=4>
		<a href="javascript:deleteForm.submit()">����</a>
		&nbsp;&nbsp;
		<a href="javascript:history.go(-1)">���ư���</a>
		</font>
	</td>
</tr>
</table>
</form></center>
</body>
</html>