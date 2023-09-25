<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<script type="text/javascript" src="user/script/member.js"></script>
</head>
<body>
	<div id="wrap">
		<h1>아이디 중복확인</h1>
		<form method="post" action="ShoesServlet?command=id_check_form"
			name="frm" style="margin-right: 0">
			사용자 아이디 <input type="text" name="id" value="${id}"> <input
				type="submit" value="검색" class="submit"><br>
			<div style="margin-top: 20px">
				<c:if test="${message == 1}">
					<script type="text/javascript">
						opener.document.frm.id.value = "";
					</script>
				${id}는/은 이미 사용 중인 아이디입니다.
				</c:if>
				<c:if test="${message == -1}">
				${id}는/은 사용 가능한 아이디입니다.
				<input type="button" value="사용" onclick="idOK()">
				</c:if>
			</div>
		</form>
	</div>
</body>
</html>