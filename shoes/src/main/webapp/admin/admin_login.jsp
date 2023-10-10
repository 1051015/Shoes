<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 페이지</title>
<link href="admin/css/admin_login_style.css" rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
	<div class="container">
		<h1>관리자 로그인</h1>

		<!-- Links -->
		<ul class="links">
			<li><a href="ShoesServlet?command=login_form" id="login">회원
					로그인</a></li>
			<li><a href="ShoesServlet?command=admin_login_form"
				id="admin_login">관리자 로그인</a></li>
		</ul>

		<!-- Form -->
		<form method="post" action="ShoesServlet?command=admin_login"
			name="afrm">
			<!-- 아이디 입력 -->
			<div class="first-input input__block first-input__block">
				<input type="text" placeholder="아이디를 입력하세요" class="input" id="id"
					name="id">
			</div>

			<!-- 비밀번호 입력 -->
			<div class="input__block">
				<input type="password" placeholder="비밀번호를 입력하세요" class="input"
					id="pwd" name="pwd">
			</div>

			<!-- 관리자 로그인 버튼 -->
			<button class="login__btn" type="submit">관리자
				로그인</button>
			<!-- 홈으로 가기 버튼 -->
			<button class="login__btn2" type="button"
				onclick="location.href='ShoesServlet?command=index'">Wings
				바로가기</button>
			<h4 style="text-align: center; color: red;">${message}</h4>
		</form>
	</div>
</body>
</html>