<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty loginUser}">
	<jsp:forward page='login.do' />  // 장바구니 페이지 만들 때 사용(로그인 안되어 있을 때 로그인 페이지로 이동)
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 전용 페이지</h2>
	<h1>반갑습니다.</h1>

	<form action="logout.do">
		<table>
			<tr>
				<td>안녕하세요. ${loginUser.memName}(${loginUser.uid})님!!</td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="로그아웃"> &nbsp;&nbsp; <input type="button"
					value="회원정보 변경"
					onclick="location.href='memberUpdate.do?uid=${loginUser.uid}'"></td>
			</tr>

		</table>

	</form>
</body>
</html>