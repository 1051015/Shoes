<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 페이지</title>
<link rel="stylesheet" href="user/product/css/cartList_style.css">
<script type="text/javascript" src="user/script/product.js"></script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<h1 class="title">장바구니</h1>
	<div class="cart">
		<div class="cart__information">
			<ul>
				<li>장바구니 상품은 최대 30일간 저장됩니다.</li>
				<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
				<li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기
					바랍니다.</li>
			</ul>
		</div>

		<form name="frm" method="post">
			<table id="cartList">
				<tr>
					<th class="category">선 택</th>
					<th class="category">이미지</th>
					<th class="category">상품명</th>
					<th class="category">색 상</th>
					<th class="category">사이즈</th>
					<th class="category">수 량</th>
					<th class="category">가 격</th>
					<th class="category">주문일</th>
				</tr>
				<c:choose>
					<c:when test="${cartList.size() == 0}">
						<tr>
							<td colspan="8"><h3
									style="padding: 20px; text-align: center;">장바구니가 비었습니다.</h3></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${cartList}" var="cartVO">
							<tr>
								<td class="data"><input type="checkbox" name="cseq"
									value="${cartVO.cseq}"></td>
								<td class="data"><a
									href="ShoesServlet?command=product_detail&shoescode=${cartVO.shoescode}"><img
										src="product_images/${cartVO.infoimg}"
										style="width: 100px; height: 100px;"></a></td>
								<td class="data">${cartVO.pname}</td>
								<td class="data">${cartVO.color}</td>
								<td class="data">${cartVO.psize}</td>
								<td class="data">${cartVO.quantity}</td>
								<td class="data"><fmt:formatNumber
										value="${cartVO.price*cartVO.quantity}" pattern="###,###" />원</td>
								<td class="data"><fmt:formatDate value="${cartVO.indate}"
										type="date" /></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>

			<span class="total_price">결제금액 : <fmt:formatNumber
					value="${totalPrice}" pattern="###,###" />원
			</span>

			<div id="buttons">
				<input type="button" value="삭제하기" class="delete"
					onclick="go_cart_delete()"> <input type="button"
					value="쇼핑 계속하기" class="continue"
					onclick="location.href='ShoesServlet?command=index'">
				<c:if test="${cartList.size() != 0}">
					<input type="button" value="주문하기" class="order"
						onclick="go_order_insert()">
				</c:if>
			</div>
		</form>
	</div>
	<%@ include file="/footer.jsp"%>
</body>
</html>