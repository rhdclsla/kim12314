<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="net.news.db.*" %>
<%@page import="java.util.*"%>
<%	
	request.setCharacterEncoding("UTF-8");
	NewsBean news = (NewsBean)request.getAttribute("newsdata");
	

%>

<html>
<head>
	<title>MVC �Խ���</title>
	<link rel="stylesheet" href="css/style.css" />
	<style type="text/css">

	
	
</style>
<script lang="javascript">
function addnews() {
	newsform.submit();
}

</script>


</head>

<body>

	<div id="container">
		<div><jsp:include page="/header.jsp"></jsp:include></div>

		<!-- �Խ��� ��� -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<center>
			<div style="font-size:35pt; font-weight: bold">�ҽ�</div>
			<form action="./NewsAddAction.ne" method="post"
				 name="newsform">
				<table class="style_table" cellpadding="0" cellspacing="0">

					<tr>
						<td style="font-family: ����; font-size: 20" height="16">
							<div align="center">�� ��</div>
						</td>
						<td><input name="NEWS_SUBJECT" type="text" size="50"
							maxlength="100" style="font-size: 20" ;
				value="" /></td>
					</tr>
					
					<tr>
						<td style="font-family: ����; font-size: 20">
							<div align="center">�� ��</div>
						</td>
						<td><textarea name="NEWS_CONTENTS" cols="90" rows="30"></textarea>
						</td>
					</tr>
					
					
				</table>
				<a href="javascript:addnews()"><img
								src="image/o.PNG"></a>&nbsp;&nbsp; <a
							href="javascript:history.go(-1)"><img src="image/c.PNG"></a>
				<div><jsp:include page="/bottom.jsp"></jsp:include></div>
			</form>
		</center>
	</div>
	<!-- �Խ��� ��� -->
</body>
</html>