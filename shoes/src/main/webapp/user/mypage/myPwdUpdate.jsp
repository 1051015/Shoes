<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="css/myMain.css" rel="stylesheet"> -->
<link href="user/mypage/css/myPwdUpdate.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<form action="ShoesServlet?command=updatePwd">
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
				<div id="pwd_change_wrap">
					<h2>비밀번호 변경</h2>
					<div id="pwd_change">
						<table>
							<colgroup>
								<col style="width: 130;">
								<col>
							</colgroup>
							<tr>
								<th>새 비밀번호<span id="required">*</span></th>
								<td><input type="text" name="new_pwd"></td>
							</tr>
							<tr>
								<th>비밀번호 확인<span id="required">*</span></th>
								<td><input type="text" name="new_pwd_check"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
	<%@ include file="/footer.jsp"%>
</body>
</html>