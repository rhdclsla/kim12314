<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="net.review.db.*" %>
<%
	ReviewBean review = (ReviewBean)request.getAttribute("reviewdata");
%>

<html>
<head>
	<title>MVC �Խ���</title>
	<link rel="stylesheet" href="css/style.css" />
	<style type="text/css">

	
	
</style>
</head>

<body>
<div id="container">
<div><jsp:include page="/header.jsp"></jsp:include></div>
<!-- �Խ��� ���� -->
<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br><br>
		<br>
		<br>
		
<center><table cellpadding="0" cellspacing="0">
	
	
	<tr>
		<td style="font-family:����; font-size:20" height="16">
			<div align="center">�� ��&nbsp;&nbsp;</div>
		</td>
		
		<td style="font-family:����; font-size:20">
		<%=review.getREVIEW_SUBJECT()%>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:����; font-size:20">
			<div align="center">�� ��</div>
		</td>
		<td style="font-family:����; font-size:20">
			<table border=0 width=700 height=400 style="table-layout:fixed">
				<tr>
					<td valign=top style="font-family:����; font-size:20">
					<%=review.getREVIEW_CONTENTS() %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;"></td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	
	<tr align="center" valign="middle">
		<td colspan="5">
			<font size=4>
			<a href="./ReviewReplyAction.re?num=<%=review.getREVIEW_NUM() %>">
			[�亯]
			</a>&nbsp;&nbsp;
			<a href="./ReviewModify.re?num=<%=review.getREVIEW_NUM() %>">
			[����]
			</a>&nbsp;&nbsp;
			<a href="./ReviewDelete.re?num=<%=review.getREVIEW_NUM() %>">
			[����]
			</a>&nbsp;&nbsp;
			<a href="./ReviewList.re">[���]</a>&nbsp;&nbsp;
			</font>
		</td>
	</tr>
</table></center>
<!-- �Խ��� ���� -->
</div>
</body>
</html>