<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="net.review.db.*" %>
<%
	ReviewBean review = (ReviewBean)request.getAttribute("reviewdata");
%>

<html>
<head>

	<title>�����ϱ�</title>
	<script type="text/javascript">
	function modifyreview(){
		modifyform.submit();
	}
	</script>
	<style type="text/css">
	
	
</style>
</head>

<body>
<div id="container">
      
         <div><jsp:include page="/header.jsp" flush="false"></jsp:include></div>
<!-- �Խ��� ���� -->
<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br><br>
		
<form action="ReviewModifyAction.re" method="post" name="modifyform">
<input type="hidden" name="REVIEW_NUM" value=<%=review.getREVIEW_NUM() %>>
<center><table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5"><h1>�����ϱ�</h1></td>
	</tr>
	<tr>
		<td height="16" style="font-family:����; font-size:20">
			<div align="center" >�� ��&nbsp;&nbsp;</div>
		</td>
		<td>
			<input name="REVIEW_SUBJECT" size="50" maxlength="100" 
				value="<%=review.getREVIEW_SUBJECT()%>">
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:20">
			<div align="center">�� ��&nbsp;&nbsp;</div>
		</td>
		<td>
			<textarea name="REVIEW_CONTENTS" cols="67" rows="15">
			<%=review.getREVIEW_CONTENTS() %>
			</textarea>
		</td>
	</tr>

	<tr>
		<td height="16" style="font-family:����; font-size:20">
			<div align="center">��й�ȣ&nbsp;&nbsp;</div>
		</td>
		<td>
			<input name="REVIEW_PASS" type="password">
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	
	<tr align="center" valign="middle">
		<td colspan="5">
			<font size=5>
			<a href="javascript:modifyreview()">[����]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[�ڷ�]</a>&nbsp;&nbsp;
			</font>
		</td>
	</tr>
</table></center>
</form>
<!-- �Խ��� ���� -->
</div>
</body>
</html>