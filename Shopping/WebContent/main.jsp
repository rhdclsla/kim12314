<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="euc-kr">
<title>CSS</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script language="JavaScript">
	$(document).ready(
			function() {
				//사용할 배너
				var $banner = $(".banner").find("ul");

				var $bannerWidth = $banner.children().outerWidth();//배너 이미지의 폭
				var $bannerHeight = $banner.children().outerHeight(); // 높이
				var $bannerLength = $banner.children().length;//배너 이미지의 갯수
				var rollingId;

				//정해진 초마다 함수 실행
				rollingId = setInterval(function() {
					rollingStart();
				}, 3000);//다음 이미지로 롤링 애니메이션 할 시간차

				//마우스 오버시 롤링을 멈춘다.
				banner.mouseover(function() {
					//중지
					clearInterval(rollingId);
					$(this).css("cursor", "pointer");
				});
				//마우스 아웃되면 다시 시작
				banner.mouseout(function() {
					rollingId = setInterval(function() {
						rollingStart();
					}, 3000);
					$(this).css("cursor", "default");
				});

				function rollingStart() {
					$banner.css("width", $bannerWidth * $bannerLength + "px");
					$banner.css("height", $bannerHeight + "px");
					//alert(bannerHeight);
					//배너의 좌측 위치를 옮겨 준다.
					$banner.animate({
						left : -$bannerWidth + "px"
					}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
						//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
						$(this).append(
								"<li>" + $(this).find("li:first").html()
										+ "</li>");
						//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
						$(this).find("li:first").remove();
						//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
						$(this).css("left", 0);
						//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
					});
				}
			});
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	align: center;
}

#container {
	width: 1480px;
	margin: 10px auto;
	padding: 10px;
}

#header {
	height: 20px;
	padding: 10px;
	margin-bottom: 10px; <!--
	border: 1px solid #bcbcbc;
	-->
}

#index {<!--맥심이미지 ( 메인으로 돌아오기) --> width:150px;
	height: 100px;
	padding: 20px;
	margin-bottom: 20px;
	float: left; <!--
	border: 1px solid #bcbcbc;
	-->
}



#board {<!--연아 옆 추천상품 --> width:100px;
	height: 425px;
	padding: 60px;
	margin-top: 15px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc; <!--
	align: center;
	-->
}

#best {
	width: 1065px;
	height: 200px;
	padding: 20px;
	margin-top: 600px;
	margin-right: 30px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
	align: center;
}

#footer {
	clear: both;
	padding: 20px; <!--
	border: 1px solid #bcbcbc;
	-->
}

.index img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 150%;
}

@media ( max-width : 480px ) {
	#container {
		width: auto;
	}
	#content {
		float: none;
		width: auto;
	}
	#best {
		float: none;
		width: auto;
	}
}

.banner {
	position: absolute;
	width: 1010px;
	height: 555px;
	top: 160px;
	left: 35px;
	padding: 0;
	margin: 0 auto;
	overflow: hidden;
	margin: 0 auto;
}

.banner ul {
	position: relative;
	text-align: center;
	padding: 0;
	list-style: none;
}

.banner ul li {
	float: left;
	width: 1020px;
	height: 555px;
	margin: 0;
	padding: 0;
}

.line1 {
	position: absolute;
	top: 130px;
	left: 1060px;
	margin-bottom: 20;
}

.line2 {
	position: absolute;
	top: 130px;
	left: 1260px;
}
#menubar {
	width: 1230px;
	height: 15px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
}
#menubar ul {
	width: 1230px;
	margin: 0 auto;
	overflow: hidden;
	list-style: none;
}

#menubar ul li{
	float: left;
	width: 150px;
	height: 15px;
	line-height: 15px;
	text-align: center;
	list-style: none;
}
#menubar ul li a{
	list-style: none;
}
</style>
</head>
<body>
	<div id="container">
		<div id="header">
			<%if(session.getAttribute("id")!=null){ %>
				<a href="MemberLogoutAction.mo">로그아웃</a>
				<a href="www.daum.net">장바구니</a> 
				<a href="ProductOrderAction.po">주문</a>
			<%}else{ %>
				<a href="MemberLoginForm.mo">로그인</a>
				<a href ="MemberAddView.mo">회원가입</a>
			<%} %>	
				<a href="www.nate.com">공지사항</a>
				<a href="BoardList.bo">Q&A</a> 
				<a href="www.naver.com">리뷰</a>
		</div>
		<div id="index">
			<a href="main.jsp"><img src="image/h1Logo.png"></a>
		</div>
		<div id="menubar">
			<ul>
				<li><a href="#">ABOUT MAXIM</a></li>
				<li><a href="#">PRODUCT</a></li>
				<li><a href="#">EVENT</a></li>
				<li><a href="#">NEWS&MEDIA</a></li>
				<li><a href="#">CUSTOMER</a></li>
			</ul>

		</div>
		<!-- 배너사진 -->
		<div class="banner">
			<ul>
				<li><img src="image/M1.jpg" width="1000" height="555px"></li>
				<li><img src="image/M2.jpg" width="1000" height="555px"></li>
				<li><img src="image/M3.jpg" width="1000" height="555px"></li>
				<li><img src="image/M4.jpg" width="1000" height="555px"></li>
				<li><img src="image/M5.jpg" width="1000" height="555px"></li>
				<li><img src="image/hori.jpg" width="600" height="555px"></li>
			</ul>
		</div>


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
		<div id="footer">
			<p>Copyright</p>
		</div>
	</div>
</body>
</html>