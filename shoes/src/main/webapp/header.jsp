<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WINGS</title>
<link rel="stylesheet" href="user/css/hf_style.css">
</head>
<body>
	<div class="header">
		<!--헤더부분 (로고,페이지명,검색창,회원가입,로그인 등등)-->
		<img src="images/logoBlack.jpg">
		<div class="title">
			<h2>
				<a href="ShoesServlet?command=index">WINGS</a>
			</h2>
		</div>

		<div class="search">
			<input type="text" name="info" placeholder="신상품 ~50% SALE"
				onfocus="this.value=''">
			<ul>
				<li><a href="#"><img src="images/filter.png"></a></li>
				<li><a href="#"><img src="images/search.jpg"></a></li>
			</ul>
		</div>

		<div class="rightTool">
			<ul>
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<li><a href="ShoesServlet?command=login_form"><img
								src="images/login.png"></a></li>
						<li><a href="ShoesServlet?command=join_form"><img
								src="images/join.png"></a></li>
						<li><a href="ShoesServlet?command=cart_form"><img
								src="images/cart.png"></a></li>
						<li><a href="ShoesServlet?command=mypage"><img
								src="images/mypage.png"></a></li>
					</c:when>
					<c:otherwise>
						<li class="user_login">
							${sessionScope.loginUser.name}(${sessionScope.loginUser.id})님</li>
						<li style="margin-top: 10px;"><a
							href="ShoesServlet?command=logout"><img
								src="images/logout.png"></a></li>
						<li><a href="ShoesServlet?command=cart_form"><img
								src="images/cart.png"></a></li>
						<li><a href="ShoesServlet?command=mypage"><img
								src="images/mypage.png"></a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>

	<div class="menubar">
		<div class="totalmenu">
			<div class="main">
				<ul>
					<li><a href="ShoesServlet?command=brand_form">BRAND</a></li>
					<li><a href="men.jsp">MEN</a></li>
					<li><a href="women.jsp">WOMEN</a></li>
					<li><a href="kids.jsp">KIDS</a></li>
					<li><a href="sale.jsp">SALE</a></li>
					<li><a href="new.jsp">NEW</a></li>
				</ul>
			</div>

			<div class="sub">
				<ul>
					<li><a href="#">이벤트/쿠폰</a></li>
					<li><a href="#">MODELS</a></li>
					<li><a href="#">ONLY WINGS</a></li>
					<li><a href="#">RANK</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>