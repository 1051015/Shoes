<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="css/myMain.css" rel="stylesheet"> -->
<link href="user/mypage/css/myMain.css" rel="stylesheet">
<meta charset="UTF-8">
<title>마이페이지</title>
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
				<div id="order_wrap">
					<h2>주문 목록</h2>
					<div id="order_list_table">
						<table>
							<tr id="order_list">
								<th colspan="2">상품명</th>
								<th>주문일자</th>
								<th>주문번호</th>
								<th>결제금액</th>
								<th>주문상세</th>
							</tr>
							<tr>
								<td><img alt="신발1" src="user/mypage/myImages/shoes1.png"></td>
								<td>운동화</td>
								<td>2023.09.15</td>
								<td>1</td>
								<td>\16500</td>
								<td>조회</td>
							</tr>
						</table>
					</div>
				</div>
				<div id="heart_wrap">
					<h2>찜 목록</h2>
					<div id="heart_item">
						<ul id="heart_product">
							<li><a href="#">
									<div id="heart_img">
										<img src="user/mypage/myImages/shoes1.png" />
									</div>
									<div id="heart_info">
										<div id="brand">나이키</div>
										<div id="shoes_name">나이키 코트 로얄 2 넥스트 네이처</div>
										<div id="price">
											45,000원 <span id="zzim"> <img alt="찜"
												src="user/mypage/myImages/zzim.png" />
											</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div id="heart_img">
										<img src="user/mypage/myImages/shoes1.png" />
									</div>
									<div id="heart_info">
										<div id="brand">나이키</div>
										<div id="shoes_name">나이키 코트 로얄 2 넥스트 네이처</div>
										<div id="price">
											45,000원 <span id="zzim"> <img alt="찜"
												src="user/mypage/myImages/zzim.png" />
											</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div id="heart_img">
										<img src="user/mypage/myImages/shoes1.png" />
									</div>
									<div id="heart_info">
										<div id="brand">나이키</div>
										<div id="shoes_name">나이키 코트 로얄 2 넥스트 네이처</div>
										<div id="price">
											45,000원 <span id="zzim"> <img alt="찜"
												src="user/mypage/myImages/zzim.png" />
											</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div id="heart_img">
										<img src="user/mypage/myImages/shoes1.png" />
									</div>
									<div id="heart_info">
										<div id="brand">나이키</div>
										<div id="shoes_name">나이키 코트 로얄 2 넥스트 네이처</div>
										<div id="price">
											45,000원 <span id="zzim"> <img alt="찜"
												src="user/mypage/myImages/zzim.png" />
											</span>
										</div>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</form>
	<%@ include file="/footer.jsp"%>
</body>