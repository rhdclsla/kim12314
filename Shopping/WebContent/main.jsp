<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="euc-kr">
<title>MainPage</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<div id="container">
		<div><jsp:include page="header.jsp"></jsp:include></div>
		<div><jsp:include page="banner.jsp"></jsp:include></div>
		


		<div class="board">
			<ul class="line1">
				<p>
					<a href="NewFile1.jsp"><img src="image/btn1.png" width="170px"
						height="170px" /></a>
				</p>
				<p>
					<a href="#"><img src="image/btn2.png" width="170px"
						height="170px" /></a>
				</p>
				<p>
					<a href="#"><img src="image/btn3.png" width="170px"
						height="170px" /></a>
				</p>
			</ul>
			<ul class="line2">
				<p>
					<a href="#"><img src="image/btn4.png" width="170px"
						height="170px" /></a>
				</p>

				<p>
					<a href="#"><img src="image/btn5.png" width="170px"
						height="170px" /></a>
				</p>
				<p>
					<a href="#"><img src="image/btn6.png" width="170px"
						height="170px" /></a>
				</p>


			</ul>
		</div>



		<div id="best">
			<h2>베스트 상품</h2>
		</div>
		<div><jsp:include page="bottom.jsp"></jsp:include></div>
	</div>
</body>
</html>