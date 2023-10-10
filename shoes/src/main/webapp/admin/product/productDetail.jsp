<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리 상세페이지</title>
<link href="admin/product/css/productDetail_style.css" rel="stylesheet">
<script type="text/javascript" src="admin/script/product.js"></script>
</head>
<body>
	<%@ include file="/admin/admin_header.jsp"%>
	<h1 class="title">상품 상세 정보</h1>
	<form name="afrm" method="post">
		<table id="list">
			<tr>
				<th>상품이미지</th>
				<th>상품명</th>
				<th>가 격</th>
				<th>브랜드</th>
				<th>색 상</th>
				<th>등록일자</th>
			</tr>

			<tr>
				<td><img src="product_images/${productVO.infoimg}"
					style="width: 100px; height: 100px;"></td>
				<td>${productVO.pname}</td>
				<td><fmt:formatNumber value="${productVO.price}" />원</td>
				<td>${productVO.brand}</td>
				<td>${productVO.color}</td>
				<td><fmt:formatDate value="${productVO.indate}" /></td>
		</table>

		<div class="buttons">
			<input type="button" value="수정" class="modify_but"
				onClick="go_modify('${tpage}','${productVO.shoescode}')"> <input
				type="button" value="목록" class="list_but"
				onClick="go_list('${tpage}')">
		</div>
	</form>
</body>
</html>