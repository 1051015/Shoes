<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 페이지</title>
<link href="admin/css/admin.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/admin/admin_header.jsp"%>
	<h1 class="title">회원리스트</h1>
	<form method="post" name="afrm">
		<div class="go_search">
			<span>회원성명</span>&nbsp;<input type="text" name="key"> <input
				type="button" value="검색" class="search_but" onclick="search()">
		</div>
		<script type="text/javascript">
			/*회원 검색 기능*/
			function search() {
				document.afrm.action = "ShoesServlet?command=admin_member_list";
				document.afrm.submit();
			}
		</script>
		<table id="orderList">
			<tr>
				<th>아이디(탈퇴여부)</th>
				<th>회원성명</th>
				<th>이메일</th>
				<th>우편번호</th>
				<th>주소</th>
				<th>휴대폰번호</th>
				<th>가입일</th>
			</tr>
			<c:forEach items="${memberList}" var="memberVO">
				<tr>
					<td>${memberVO.id}<c:choose>
							<c:when test='${memberVO.useyn == "y"}'>
								<input type="checkbox" name="useyn" disabled="disabled">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="useyn" checked="checked"
									disabled="disabled">
							</c:otherwise>
						</c:choose>
					</td>
					<td>${memberVO.name}</td>
					<td>${memberVO.email}</td>
					<td>${memberVO.zipNum}</td>
					<td>${memberVO.address}</td>
					<td>${memberVO.phone}</td>
					<td><fmt:formatDate value="${memberVO.indate}" /></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>