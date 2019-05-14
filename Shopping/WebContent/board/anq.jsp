<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.board.db.*"%>

<%
	List boardList = (List) request.getAttribute("boardlist");
	int listcount = ((Integer) request.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();
	int endpage = ((Integer) request.getAttribute("endpage")).intValue();
%>

<html>
<head>

<title>Q&A</title>
<link rel="stylesheet" href="css/style.css" />
<style>
Button {
	background-color: transparent;
	border: 0px none;
}

.btnImage {
	background-color: transparent;
	vertical-align: middle;
	/* background: url("loginButton.png") no-repeat; */
	border: 0px none;
	cursor: pointer;
	clear: none;
	float: none;
}
</style>
</head>



<body>
		<%-- <%
	if(session.getAttribute("id").equals("admin")){%>
		<%=session.getAttribute("id")%>�� ȯ���մϴ�.<br>
		<a href = "MemberListViewAction.mo">�����ڸ�� ����(ȸ�� ��Ϻ���)</a>
	<%}else{%>
		<%=	session.getAttribute("id")%>�� ȯ���մϴ�.
	<%} %> --%>
		<!-- �Խ��� ����Ʈ -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<table width=75% border="0" cellpadding="0" cellspacing="0"
			align="center">

			<tr align="center" valign="middle">
				<td colspan="4" style="font-size: 40pt; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Q
					& A</td>

				<td align=right><font size=4>�� ���� : ${listcount }</font></td>
			</tr>
			<tr align="center" valign="middle" bordercolor="#333333">
				<td style="font-family: Tahoma; font-size: 17pt;" width="8%"
					height="26">
					<div align="center">��ȣ</div>
				</td>
				<td style="font-family: Tahoma; font-size: 17pt;" width="50%">
					<div align="center">����</div>
				</td>
				<td style="font-family: Tahoma; font-size: 17pt;" width="14%">
					<div align="center">�ۼ���</div>
				</td>
				<td style="font-family: Tahoma; font-size: 17pt;" width="17%">
					<div align="center">��¥</div>
				</td>
				<td style="font-family: Tahoma; font-size: 17pt;" width="11%">
					<div align="center">��ȸ��</div>
				</td>
			</tr>

			<%
				for (int i = 0; i < boardList.size(); i++) {
					BoardBean bl = (BoardBean) boardList.get(i);
			%>
			<tr align="center" valign="middle" bordercolor="#333333"
				onmouseover="this.style.backgroundColor='F8F8F8'"
				onmouseout="this.style.backgroundColor=''">
				<td height="23" style="font-family: Tahoma; font-size: 15pt;">
					<%=bl.getBOARD_NUM()%>
				</td>

				<td style="font-family: Tahoma; font-size: 15pt;">
					<div align="left">
						<%
							if (bl.getBOARD_RE_LEV() != 0) {
						%>
						<%
							for (int a = 0; a <= bl.getBOARD_RE_LEV() * 2; a++) {
						%>
						&nbsp;
						<%
							}
						%>
						��
						<%
							} else {
						%>
						��
						<%
							}
						%>
						<a href="./BoardDetailAction.bo?num=<%=bl.getBOARD_NUM()%>"> <%=bl.getBOARD_SUBJECT()%>
						</a>
					</div>
				</td>

				<td style="font-family: Tahoma; font-size: 15pt;">
					<div align="center"><%=bl.getBOARD_NAME()%></div>
				</td>
				<td style="font-family: Tahoma; font-size: 15pt;">
					<div align="center"><%=bl.getBOARD_DATE()%></div>
				</td>
				<td style="font-family: Tahoma; font-size: 15pt;">
					<div align="center"><%=bl.getBOARD_READCOUNT()%></div>
				</td>
			</tr>
			<%
				}
			%>
			<tr align=center height=20>
				<td colspan=7 style="font-family: Tahoma; font-size: 15pt;">
					<%
						if (nowpage <= 1) {
					%> [����]&nbsp; <%
 	} else {
 %> <a
					href="./BoardList.bo?page=<%=nowpage - 1%>">[����]</a>&nbsp; <%
 	}
 %> <%
 	for (int a = startpage; a <= endpage; a++) {
 		if (a == nowpage) {
 %> [<%=a%>] <%
 	} else {
 %> <a
					href="./BoardList.bo?page=<%=a%>">[<%=a%>]
				</a>&nbsp; <%
 	}
 %> <%
 	}
 %> <%
 	if (nowpage >= maxpage) {
 %> [����] <%
 	} else {
 %> <a
					href="./BoardList.bo?page=<%=nowpage + 1%>">[����]</a> <%
 	}
 %>
				</td>
			</tr>
			<tr align="right">
				<td colspan="5"><a href="BoardWrite.bo"> <img
						class="btnImage" src="image/write.PNG">
				</a></td>
			</tr>
		</table>
	
</body>
</html>