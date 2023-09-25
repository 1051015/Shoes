<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="css/myMain.css" rel="stylesheet"> -->
<link href="user/mypage/css/myMemberUpdate.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<form action="">
		<div id="wrap">
			<div id="title">
				<h1>마이페이지</h1>
			</div>
			<div id="side_wrap">
				<ul>
					<li id="side_span"><span>마이페이지</span>
						<ul>
							<li><a href="ShoesServlet?command=mypage">마이페이지</a></li>
						</ul></li>
					<li id="side_span"><span>쇼핑목록</span>
						<ul>
							<li><a href="#">장바구니</a></li>
							<li><a href="#">주문목록</a></li>
						</ul></li>
					<li id="side_span"><span>개인정보</span>
						<ul>
							<li><a href="ShoesServlet?command=member_update_form">개인정보수정</a></li>
							<li><a href="ShoesServlet?command=pwd_update_form">비밀번호변경</a></li>
							<li><a href="#">회원탈퇴</a></li>
						</ul></li>
				</ul>
			</div>
			<div id="content">
				<div id="member_info">
					<div id="member_name">
						###님은 <span id="member_lev">온라인 회원</span>입니다.
					</div>
					<div id="member_goods">
						<div id="cart">
							<img src="user/mypage/myImages/cart.png" alt="장바구니">장바구니<a
								href="#">#<span id="bucket_count">개</span></a>
						</div>
						<div id="heart">
							<img src="user/mypage/myImages/heart.png" alt="찜">찜한상품<a
								href="#">#<span id="heart_count">개</span></a>
						</div>
					</div>
				</div>
				<div id="member_update_wrap">
					<h2>개인정보 수정</h2>
					<div id="member_update">
						<table>
							<colgroup>
								<col style="width: 130;">
								<col>
							</colgroup>
							<tr>
								<th>이름<span id="required">*</span></th>
								<td>홍길동</td>
							</tr>
							<tr>
								<th>아이디<span id="required">*</span></th>
								<td>abc12345</td>
							</tr>
							<tr>
								<th>이메일<span id="required">*</span></th>
								<td><input type="text" name="email" placeholder="원래 이메일"></td>
							</tr>
							<tr>
								<th>휴대폰 번호</th>
								<td><input type="text" name="phone" placeholder="원래 번호"></td>
							</tr>
							<tr>
								<th>비밀번호 확인<span id="required">*</span></th>
								<td><input type="text" name="pwd_check"></td>
							</tr>
						</table>
					</div>
					<div id="button">
						<input type="button" value="변경" id="submit" onclick="">
					</div>
				</div>
			</div>
		</div>
	</form>
	<%@ include file="/footer.jsp"%>
</body>
</html>