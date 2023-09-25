<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WINGS</title>
<link rel="stylesheet" href="user/css/index_style.css">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="ad">
		<!--헤더 바로 밑에 들어가는 광고베너부분-->
	</div>

	<div class="bestitems">
		<h1>Best Items</h1>
		<div class="box">
			<a href="#">
				<div class="best1">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best2">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best3">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best4">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best5">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best6">
					<div class="imgbox"></div>
				</div>
			</a>
		</div>

		<div class="box2">
			<a href="#">
				<div class="best1">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best2">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best3">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best4">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best5">
					<div class="imgbox"></div>
				</div>
			</a> <a href="#">
				<div class="best6">
					<div class="imgbox"></div>
				</div>
			</a>
		</div>
	</div>

	<div class="mdpick">
		<h1>MD'S PICK</h1>
		<div class="box">
			<a href="ShoesServlet?command=product_detail"><div class="md1"></div></a> <a href="#"><div
					class="md2"></div></a> <a href="#"><div class="md3"></div></a> <a
				href="#"><div class="md4"></div></a>
		</div>

		<div class="nar">
			<div class="md1nar">
				<span>나이키 신발1</span><a><br>편안함과 착용감을 겸비!!<br>나이키만의 스페셜
					운동화</a>
			</div>

			<div class="md2nar">
				<span>나이키 신발2</span><a><br>편안함과 착용감을 겸비!!<br>나이키만의 스페셜
					운동화</a>
			</div>

			<div class="md3nar">
				<span>아디다스 신발1</span><a><br>편안함과 착용감을 겸비!!<br>아디다스의
					스페셜 운동화</a>
			</div>

			<div class="md4nar">
				<span>아디다스 신발2</span><a><br>편안함과 착용감을 겸비!!<br>아디다스의
					스페셜 운동화</a>
			</div>
		</div>
	</div>

	<div class="newitems">
		<h1>New Items</h1>
		<div class="box">
			<a href="#">
				<div class="new1"></div>
			</a> <a href="#">
				<div class="new2"></div>
			</a> <a href="#">
				<div class="new3"></div>
			</a> <a href="#">
				<div class="new4"></div>
			</a> <a href="#">
				<div class="new5"></div>
			</a> <a href="#">
				<div class="new6"></div>
			</a>
		</div>
	</div>

	<div class="topbrand">
		<h1>Top Brand</h1>
		<div class="box">
			<a href="#"><div class="brand1"></div></a> <a href="#"><div
					class="brand2"></div></a> <a href="#"><div class="brand3"></div></a>
		</div>

		<div class="box2">
			<a href="#"><div class="brand1"></div></a> <a href="#"><div
					class="brand2"></div></a> <a href="#"><div class="brand3"></div></a>
		</div>
	</div>

	<div class="hotsale">
		<h1>Hot Sale</h1>
		<div class="box">
			<a href="#"><div class="sale1"></div></a> <a href="#"><div
					class="sale2"></div></a> <a href="#"><div class="sale3"></div></a> <a
				href="#"><div class="sale4"></div></a> <a href="#"><div
					class="sale5"></div></a> <a href="#"><div class="sale6"></div></a>
		</div>
	</div>

	<div class="ranking">
		<h1>RANKING</h1>
		<div class="box">
			<a href="#"><div class="rank1"></div></a> <a href="#"><div
					class="rank2"></div></a> <a href="#"><div class="rank3"></div></a> <a
				href="#"><div class="rank4"></div></a> <a href="#"><div
					class="rank5"></div></a>
		</div>

		<div class="box2">
			<a href="#"><div class="rank1"></div></a> <a href="#"><div
					class="rank2"></div></a> <a href="#"><div class="rank3"></div></a> <a
				href="#"><div class="rank4"></div></a> <a href="#"><div
					class="rank5"></div></a>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>