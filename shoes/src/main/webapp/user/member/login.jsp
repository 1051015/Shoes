<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="../header.jsp"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link href="user/member/css/login_style.css" rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="container">
		<h1>로그인</h1>

		<!-- Links -->
		<ul class="links">
			<li><a href="ShoesServlet?command=login_form" id="login">회원
					로그인</a></li>
			<li><a href="ShoesServlet?command=admin_login_form"
				id="admin_login">관리자 로그인</a></li>
		</ul>

		<!-- Form -->
		<form method="post" action="ShoesServlet?command=login" name="frm">
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

			<!-- 로그인 버튼 -->
			<button class="login__btn" onclick="loginCheck()">로그인</button>

			<!-- 회원가입 페이지로 이동 -->
			<div class="join">
				<p>
					아직 회원이 아니신가요?<a href="ShoesServlet?command=join_form">회원가입</a>
				</p>
			</div>

		</form>

		<!-- separator -->
		<div class="separator">
			<p>다른 계정으로 로그인</p>
		</div>

		<!-- 다른 계정으로 로그인 -->
		<div class="others">
			<ul>
				<li><button class='btn-social-login'
						style='background: #D93025'
						onclick="location.href='https://accounts.google.com/login?hl=ko'">
						<i class="xi-2x xi-google"></i>
					</button> <br> <a href="https://accounts.google.com/login?hl=ko">구글</a></li>
				<li><button class='btn-social-login'
						style='background: #4267B2'
						onclick="location.href='https://ko-kr.facebook.com/'">
						<i class="xi-2x xi-facebook"></i>
					</button> <br> <a href="https://ko-kr.facebook.com/">페이스북</a></li>
				<li><button class='btn-social-login'
						style='background: #1FC700'
						onclick="location.href='https://nid.naver.com/nidlogin.login'">
						<i class="xi-2x xi-naver"></i>
					</button> <br> <a href="https://nid.naver.com/nidlogin.login">네이버</a></li>
				<li><button class='btn-social-login'
						style='background: #FFEB00'
						onclick="location.href='https://accounts.kakao.com/login/?continue=https%3A%2F%2Fcs.kakao.com%2F#login'">
						<i class="xi-2x xi-kakaotalk text-dark"></i>
					</button> <br> <a
					href="https://accounts.kakao.com/login/?continue=https%3A%2F%2Fcs.kakao.com%2F#login">카카오</a></li>
			</ul>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>