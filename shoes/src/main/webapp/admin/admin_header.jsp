<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINGS</title>
<link rel="stylesheet" href="admin/css/admin_header_style.css">
</head>
<body>
	<div class="header">
		<img src="images/logoBlack.jpg">
		<div class="title">
			<h2>
				<a href="ShoesServlet?command=index">WINGS</a>
			</h2>
		</div>
	</div>

	<div class="menubar">
		<div class="totalmenu">
			<div class="main">
				<ul>
					<li><a href="ShoesServlet?command=admin_member_list">회원관리</a></li>
					<li><a href="#">상품관리</a></li>
					<li><a href="#">주문관리</a></li>
					<li><a href="ShoesServlet?command=admin_logout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>