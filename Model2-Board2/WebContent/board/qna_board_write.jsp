<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<html>
<head>
	<title>MVC �Խ���</title>
	<script language="javascript">
	function addboard(){
		boardform.submit();
	}
	</script>
	<style type="text/css">
	
	body{
      background-image: url("./Sagyou/1313.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      
   }
</style>
</head>
<body>
<!-- �Խ��� ��� -->
<form action="./BoardAddAction.bo" method="post" 
	enctype="multipart/form-data" name="boardform">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">MVC �Խ���</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12" height="16">
			<div align="center">�۾���</div>
		</td>
		<td>
			${id}
			<input name="BOARD_NAME" type="hidden" size="10" maxlength="10" 
				value="${id}" readonly/>
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12" height="16">
			<div align="center">��й�ȣ</div>
		</td>
		<td>
			<input name="BOARD_PASS" type="password" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12" height="16">
			<div align="center">�� ��</div>
		</td>
		<td>
			<input name="BOARD_SUBJECT" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12">
			<div align="center">�� ��</div>
		</td>
		<td>
			<textarea name="BOARD_CONTENT" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12">
			<div align="center">���� ÷��</div>
		</td>
		<td>
			<input name="BOARD_FILE" type="file"/>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:addboard()">[���]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[�ڷ�]</a>
		</td>
	</tr>
</table>
</form>
<!-- �Խ��� ��� -->
</body>
</html>