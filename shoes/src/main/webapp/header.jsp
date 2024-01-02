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
<script>
	function message(value) {
		alert("로그인 후 이용가능한 페이지입니다.");
		if (value == 0) {
			location.href = "ShoesServlet?command=cart_list";
		} else if (value == 1) {
			location.href = "ShoesServlet?command=mypage";
		} else if (value == 2) {
			location.href = "ShoesServlet?command=qna_list";
		}
	}
</script>
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
						<li><a href="#" onclick="message(0)"><img
								src="images/cart.png"></a></li>
						<li><a href="#" onclick="message(1)"><img
								src="images/mypage.png"></a></li>
					</c:when>
					<c:otherwise>
						<li class="user_login">
							${sessionScope.loginUser.name}(${sessionScope.loginUser.id})님</li>
						<li style="margin-top: 1px;"><a
							href="ShoesServlet?command=logout"><img
								src="images/logout.png"></a></li>
						<li><a href="ShoesServlet?command=cart_list"><img
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
					<li><a href="ShoesServlet?command=men_form">MEN</a></li>
					<li><a href="ShoesServlet?command=women_form">WOMEN</a></li>
					<li><a href="ShoesServlet?command=kids_form">KIDS</a></li>
				</ul>
			</div>

			<div class="sub">
				<ul>
					<c:choose>
						<c:when test="${empty sessionScope.loginUser}">
							<li><a href="#" onclick="message(2)">Q&A</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="ShoesServlet?command=qna_list">Q/A</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="ShoesServlet?command=models_form">MODELS</a></li>
					<li><a href="ShoesServlet?command=onlywings_form">ONLY
							WINGS</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>