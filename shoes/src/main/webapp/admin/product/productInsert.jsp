<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
<link href="admin/product/css/productInsert_style.css" rel="stylesheet">
<script type="text/javascript" src="admin/script/product.js"></script>
</head>
<body>
	<%@ include file="/admin/admin_header.jsp"%>
	<h1 class="title">상품 등록</h1>
	<form name="afrm" method="post" enctype="multipart/form-data">
		<table id="list">
			<tr>
				<th>상품코드</th>
				<td><input type="text" name="shoescode" value="방현식"></td>
			</tr>
			
			<tr>
				<th>상품명</th>
				<td><input type="text" name="pname" value="방현식신발"></td>
			</tr>

			<tr>
				<th>가 격</th>
				<td><input type="text" name="price" value="100000"></td>
			</tr>

			<tr>
				<th>브랜드</th>
				<td><input type="text" name="brand" value="방현식"></td>
			</tr>

			<tr>
				<th>색 상</th>
				<td><input type="text" name="color" value="Rainbow"></td>
			</tr>

			<tr>
				<th>상품이미지</th>
				<td><input type="file" name="mainimg"> <br> <input
					type="file" name="infoimg"> <br> <input type="file"
					name="detail1img"> <br> <input type="file"
					name="detail2img"> <br> <input type="file"
					name="detail3img"></td>
			</tr>
		</table>

		<div class="buttons">
			<input type="button" value="등록" class="save_but" onclick="go_save()">
			<input type="button" value="취소" class="mov_but" onclick="go_mov()">
		</div>
	</form>
</body>
</html>