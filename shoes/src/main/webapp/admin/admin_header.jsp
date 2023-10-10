<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINGS 관리자</title>
<link rel="stylesheet" href="admin/css/admin_header_style.css">
</head>
<body>
	<div class="header">
		<img src="images/logoBlack.jpg">
		<div class="title">
			<h2>
				<a href="ShoesServlet?command=admin_member_list">WINGS</a>
			</h2>
		</div>
	</div>

	<div class="menubar">
		<div class="totalmenu">
			<div class="main">
				<ul>
					<li><a href="ShoesServlet?command=admin_member_list">회원관리</a></li>
					<li><a href="ShoesServlet?command=admin_product_list">상품관리</a></li>
					<li><a href="ShoesServlet?command=admin_order_list">주문관리</a></li>
					<li><a href="ShoesServlet?command=admin_qna_list">Q&A관리</a></li>
					<li><a href="ShoesServlet?command=admin_logout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>