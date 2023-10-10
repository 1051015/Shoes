<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리 페이지</title>
<link href="admin/product/css/productList_style.css" rel="stylesheet">
<script type="text/javascript" src="admin/script/product.js"></script>
</head>
<body>
	<%@ include file="/admin/admin_header.jsp"%>
	<h1 class="title">상품리스트</h1>
	<form name="afrm" method="post">
		<div class="go_search">
			<span>상품명</span> <input type="text" name="key"> <input
				type="button" value="검색" class="search_but" onclick="go_search(1)">
			<input type="button" value="상품등록" name="insert_but"
				class="insert_but" onclick="go_insert()">
		</div>
		<table id="productList">
			<tr>
				<th>상품코드</th>
				<th>상품명</th>
				<th>가 격</th>
				<th>브랜드</th>
				<th>색 상</th>
				<th>등록일</th>
			</tr>
			<c:choose>
				<c:when test="${productListSize <= 0}">
					<tr>
						<td colspan="6"
							style="text-align: center; padding: 20px; font-weight: bold;">등록된
							상품이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${productList}" var="productVO">
						<tr>
							<td>${productVO.shoescode}</td>
							<td><a href="#" class="pname"
								onclick="go_detail('${tpage}', '${productVO.shoescode}')">
									${productVO.pname} </a></td>
							<td><fmt:formatNumber value="${productVO.price}" />원</td>
							<td>${productVO.brand}</td>
							<td>${productVO.color}</td>
							<td><fmt:formatDate value="${productVO.indate}" /></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="6" class="page">${paging}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
</body>
</html>