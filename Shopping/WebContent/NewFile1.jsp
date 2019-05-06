<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
=======
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
>>>>>>> branch 'Project3' of https://github.com/rhdclsla/kim12314.git
<head>
<<<<<<< HEAD
<meta charset="euc-kr">
<title>CSS</title>
안녕
=======
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
오늘 날짜 : <c:out value="${today}"/>



>>>>>>> branch 'Project3' of https://github.com/rhdclsla/kim12314.git
</body>
</html>