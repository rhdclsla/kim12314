<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

h1 {font-size: 3em; margin: 20px 0; color: #FFF;}
.container {width: 1000px; margin: 10px auto;}
ul.tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px;
	border-bottom: 1px solid #999;
	border-left: 1px solid #999;
	width: 100%;
}
ul.tabs li {
	
	float: left;
	margin: 0;
	padding: 0;
	height: 31px;
	line-height: 31px;
	border: 1px solid #999;
	border-left: none;
	margin-bottom: -1px;
	background: #F0F0F0;
	overflow: hidden;
	position: relative;
}
ul.tabs li a {
	text-decoration: none;
	color: #000;
	display: block;
	font-size: 1.2em;
	padding: 0 20px;
	border: 1px solid #fff;
	outline: none;
}
ul.tabs li a:hover {
	background: #ccc;
}	
html ul.tabs li.active, html ul.tabs li.active a:hover  {
	background: #fff;
	border-bottom: 1px solid #fff;
}
.tab_container {
	border: 1px solid #999;
	border-top: none;
	clear: both;
	float: left; 
	width: 100%;
	background: #fff;
	-moz-border-radius-bottomright: 5px;
	-khtml-border-radius-bottomright: 5px;
	-webkit-border-bottom-right-radius: 5px;
	-moz-border-radius-bottomleft: 5px;
	-khtml-border-radius-bottomleft: 5px;
	-webkit-border-bottom-left-radius: 5px;
}
.tab_content {
	padding: 20px;
	font-size: 1.2em;
}
.tab_content h2 {
	font-weight: normal;
	padding-bottom: 10px;
	border-bottom: 1px dashed #ddd;
	font-size: 1.8em;
}
.tab_content h3 a{
	color: #254588;
}
.tab_content img {
	float: left;
	margin: 0 20px 20px 0;
	border: 1px solid #ddd;
	padding: 5px;
}
</style>
</head>
</head>
<body>
<div align="center"><b>ORDER</b></div>
<div class="container">


    <ul class="tabs">
        <li><a href="#tab1">주문내역조회(0)</a></li>
        <li><a href="#tab2">취소 반품 교환내역(0)</a></li>


    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
         <form>
					<select>
						<option>전체 주문처리상태</option>
						<option>입금전</option>
						<option>배송준비중</option>					
						<option>배송중</option>
						<option>배송완료</option>	
						<option>취소</option>
						<option>교환</option>
						<option>반품</option>				
					</select>&nbsp;<b>|</b>&nbsp;
			
				<input type="button" value="오늘"><input type="button" value="1주일"><input type="button" value="1개월"><input type="button" value="3개월"><input type="button" value="6개월">
				<input type="date" name="bday">-<input type="date" name="bday"><input type="submit" value="조회">
			
				<ul>
<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
        <li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
    </ul><br>
	<b>주문상품정보</b>
	<hr>
	<table border="1">
		<tr><td>주문일자</td><td>[주문번호]</td><td>이미지</td><td>상품정보	수량</td><td>상품정보</td><td>수량</td><td>상품구매금액</td><td>주문처리상태</td><td>취소/교환/반품</td></tr>
		<tr><td colspan="9" align="center">아직암것도없음</td></tr>
	</table>
	</form>
        </div>
        <div id="tab2" class="tab_content">
 <form>              	
				<input type="button" value="오늘" name="date" id="date"><input type="button" value="1주일"><input type="button" value="1개월" name="date" id="date"><input type="button" value="3개월" name="date" id="date"><input type="button" value="6개월" name="date" id="date">
				<input type="date" name="bday">-<input type="date" name="bday"><input type="submit" value="조회">
			
				<ul>
<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
        <li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
    </ul>
	<b>취소/교환/반품</b><hr>
	
	<table border="1">
		<tr><td>주문일자</td><td>[주문번호]</td><td>이미지</td><td>상품정보	수량</td><td>상품정보</td><td>수량</td><td>상품구매금액</td><td>주문처리상태</td><td>취소/교환/반품</td></tr>
		<tr><td colspan="9" align="center">아직암것도없음</td></tr>
	</table>   
  </form>         
         
        </div>
       
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {

	//Default Action
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content
	
	//On Click Event
	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content
		var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active content
		return false;
	});

});
</script>
