<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문관리 페이지</title>
<link href="admin/css/orderList_style.css" rel="stylesheet">
<script type="text/javascript" src="admin/script/product.js"></script>
</head>
<body>
	<%@ include file="/admin/admin_header.jsp"%>
	<h1 class="title">주문리스트</h1>
	<form name="afrm" method="post">
		<div class="go_search">
			<span>회원성명</span> <input type="text" name="key"> <input
				type="button" value="검색" class="search_but" onclick="go_search(2)">
		</div>

		<table id="orderList">
			<tr>
				<th>주문번호(처리여부)</th>
				<th>주문자</th>
				<th>상품명</th>
				<th>수량</th>
				<th>우편번호</th>
				<th>배송지</th>
				<th>전화</th>
				<th>주문일</th>
			</tr>
			<c:forEach items="${orderList}" var="orderVO">
				<tr>
					<td><c:choose>
							<c:when test='${orderVO.result=="1"}'>
								<span style="font-weight: bold; color: blue">${orderVO.oseq}</span>
        (<input type="checkbox" name="result" value="${orderVO.oseq}" class="checkboxes"> 미처리)
        </c:when>
							<c:otherwise>
								<span style="font-weight: bold; color: red">${orderVO.oseq}</span>
          (<input type="checkbox" checked="checked" disabled="disabled" class="checkboxes">처리완료)
        </c:otherwise>
						</c:choose></td>
					<td>${orderVO.mname}</td>
					<td>${orderVO.pname}</td>
					<td>${orderVO.quantity}</td>
					<td>${orderVO.zipNum}</td>
					<td>${orderVO.address}</td>
					<td>${orderVO.phone}</td>
					<td><fmt:formatDate value="${orderVO.indate}" /></td>
				</tr>
			</c:forEach>
		</table>
		<div class="buttons">
			<input type="button" value="주문처리(입금확인)" class="check_but"
				onClick="go_order_save()">
		</div>
	</form>
</body>
</html>