<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기 페이지</title>
<link rel="stylesheet" href="user/product/css/cart_order_style.css">
<script type="text/javascript" src="user/script/cart_order.js"></script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<h3>
		<b>주문 / 결제</b>
	</h3>
	<br>
	<hr color="black" size="5">
	<br>
	<br>
	<center>
		<h2 class="alert alert-danger" style="color: red">주문이 정상적으로
			완료되었습니다.</h2>

		<div class="container" style="padding-top: 30px">
			<p>
				<b> 주문은 오후 6시에 배송될 예정입니다! ! </b>
		</div>
	</center>
	<div id="goorder" class="">
		<div class=""></div>
		<div class="buttongroup center-align cmd">
			<a href="ShoesServlet?command=mypage">마이페이지로 가기</a><a
				href="ShoesServlet?command=index">WINGS 바로가기</a>
		</div>
		<%@ include file="/footer.jsp"%>
</body>
</html>