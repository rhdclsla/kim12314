<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="java.util.*"%>
<%@ page import="net.news.db.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" />
<%
	List newslist = (List) request.getAttribute("newslist");
	int listcount = ((Integer) request.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();
	int endpage = ((Integer) request.getAttribute("endpage")).intValue();	
	
	request.setCharacterEncoding("UTF-8");
	
%>
</head>
<body>


	<div id="container">

		<div><jsp:include page="/header.jsp" flush="false"></jsp:include></div>
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

				</tr>
				<tr align="center" valign="middle" bordercolor="#333333">
					<td style="font-family: Tahoma; font-size: 17pt;" width="8%"
						height="26">
						<div align="center">��ȣ</div>
					</td>
					<td style="font-family: Tahoma; font-size: 17pt;" width="50%">
						<div align="center">����</div>
					</td>
					<td style="font-family: Tahoma; font-size: 17pt;" width="17%">
						<div align="center">��¥</div>
					</td>
					<td style="font-family: Tahoma; font-size: 17pt;" width="11%">
						<div align="center">��ȸ��</div>
					</td>
				</tr>

				<%
					for (int i = 0; i < newslist.size(); i++) {
						NewsBean bl = (NewsBean)newslist.get(i);
				%>
				<tr align="center" valign="middle" bordercolor="#333333"
					onmouseover="this.style.backgroundColor='F8F8F8'"
					onmouseout="this.style.backgroundColor=''">
					<td height="23" style="font-family: Tahoma; font-size: 15pt;">
						<%=bl.getNEWS_NUM()%>
					</td>

					<td style="font-family: Tahoma; font-size: 15pt;">
						<div align="left">
							<a href="./NewsDetailAction.ne?num=<%=bl.getNEWS_NUM()%>"> <%=bl.getNEWS_SUBJECT()%>
							</a>
						</div>
					</td>

					<td style="font-family: Tahoma; font-size: 15pt;">
						<div align="center"><%=bl.getNEWS_DATE()%></div>
					</td>
					<td style="font-family: Tahoma; font-size: 15pt;">
						<div align="center"><%=bl.getNEWS_READCOUNT()%></div>
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
 %> <a href="./NewsList.ne?page=<%=nowpage - 1%>">[����]</a>&nbsp; <%
 	}
 %> <%
 	for (int a = startpage; a <= endpage; a++) {
 		if (a == nowpage) {
 %> [<%=a%>] <%
 	} else {
 %> <a href="./NewsList.ne?page=<%=a%>">[<%=a%>]
					</a>&nbsp; <%
 	}
 %> <%
 	}
 %> <%
 	if (nowpage >= maxpage) {
 %> [����] <%
 	} else {
 %> <a href="./NewsList.ne?page=<%=nowpage + 1%>">[����]</a> <%
 	}
 %>
					</td>
				</tr>
			<tr align="right">		
			<td colspan="5">
<a href="NewsWrite.ne">	 <img
							class="btnImage" src="image/write.PNG">
					</a>
	</td>
				</tr>
			</table>

		<div><jsp:include page="/bottom1.jsp" flush="false"></jsp:include></div>
		<div><jsp:include page="/bottom.jsp" flush="false"></jsp:include></div>

	</div>

</body>
</html>