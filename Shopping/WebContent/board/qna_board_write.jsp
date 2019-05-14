<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<html>
<head>
<title>MVC �Խ���</title>
<script language="javascript">
	function addboard() {
		boardform.submit();
	}
</script>
<style>

table.style_Table th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

table.style_Table td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>
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
			<div style="font-size:35pt; font-weight: bold">�۾���</div>
			<form action="./BoardAddAction.bo" method="post"
				enctype="multipart/form-data" name="boardform">
				<table class="style_table" cellpadding="0" cellspacing="0">
					
					<tr>
						<td style="font-family: ����; font-size: 20" height="16">
							<div align="center">�۾���</div>
						</td>
						<td style="font-size: 20">${id} <input name="BOARD_NAME"
							type="hidden" size="10" maxlength="10" value="${id}" readonly />
						</td>
					</tr>
				
					<tr>
						<td style="font-family: ����; font-size: 20" height="16">
							<div align="center">��й�ȣ</div>
						</td>
						<td><input name="BOARD_PASS" style="font-size: 20"
							type="password" size="20" maxlength="20" value="" /></td>
					</tr>
				
					<tr>
						<td style="font-family: ����; font-size: 20" height="16">
							<div align="center">�� ��</div>
						</td>
						<td><input name="BOARD_SUBJECT" type="text" size="50"
							maxlength="100" style="font-size: 20" ;
				value="" /></td>
					</tr>
					
					<tr>
						<td style="font-family: ����; font-size: 20">
							<div align="center">�� ��</div>
						</td>
						<td><textarea name="BOARD_CONTENT" cols="90" rows="30"></textarea>
						</td>
					</tr>
					<tr>
						<td style="font-family: ����; font-size: 20">
							<div align="center">���� ÷��&nbsp;</div>
						</td>
						<td><input name="BOARD_FILE" type="file"
							style="font-size: 20" ;/></td>
					</tr>
					
					
				</table>
				<a href="javascript:addboard()"><img
								src="image/o.PNG"></a>&nbsp;&nbsp; <a
							href="javascript:history.go(-1)"><img src="image/c.PNG"></a>
				<div><jsp:include page="/bottom.jsp"></jsp:include></div>
			</form>
		</center>
	</div>
	<!-- �Խ��� ��� -->
</body>
</html>