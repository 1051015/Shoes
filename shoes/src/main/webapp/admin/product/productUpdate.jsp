<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정 페이지</title>
<link href="admin/product/css/productUpdate_style.css" rel="stylesheet">
<script type="text/javascript" src="admin/script/product.js"></script>
</head>
<body>
	<%@ include file="/admin/admin_header.jsp"%>
	<h1 class="title">상품 정보 수정</h1>
	<form name="afrm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="shoescode" value="${productVO.shoescode}">
		<table id="list">
			<tr>
				<th>상품명</th>
				<td colspan="3"><input type="text" name="pname"
					value="${productVO.pname}"></td>
			</tr>

			<tr>
				<th>가 격</th>
				<td colspan="3"><input type="text" name="price"
					value="${productVO.price}" readonly></td>
			</tr>

			<tr>
				<th>수 량</th>
				<td colspan="3"><input type="text" name="pcount"
					value="${productVO.pcount}"></td>
			</tr>

			<tr>
				<th>브랜드</th>
				<td colspan="3"><input type="text" name="brand"
					value="${productVO.brand}"></td>
			</tr>

			<tr>
				<th>색 상</th>
				<td colspan="3"><input type="text" name="color"
					value="${productVO.color}"></td>
			</tr>

			<tr>
				<th>상품이미지</th>
				<td><img src="product_images/${productVO.mainimg}"
					class="images"> <br> <input type="file" name="mainimg"></td>
				<td><img src="product_images/${productVO.infoimg}"
					class="images"> <br> <input type="file" name="infoimg"></td>
			</tr>

			<tr>
				<th>상세이미지</th>
				<td><img src="product_images/${productVO.detail1img}"
					class="images"> <br> <input type="file"
					name="detail1img"></td>
				<td><img src="product_images/${productVO.detail2img}"
					class="images"> <br> <input type="file"
					name="detail2img"></td>
				<td><img src="product_images/${productVO.detail3img}"
					class="images"> <br> <input type="file"
					name="detail3img"></td>
			</tr>
		</table>
		<div class="buttons">
			<input type="button" value="수정" class="modify_but"
				onclick="go_modify_save('${tpage}','${productVO.shoescode}')">
			<input type="button" value="취소" class="cancel_but"
				onclick="go_cancel('${tpage}','${productVO.shoescode}')">
		</div>
	</form>
</body>
</html>