<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 폼</title>
<script type="text/javascript" src="script/member.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById("addr1").value = data.address; // 주소 넣기
				document.querySelector("input[name=addr2]").focus(); //상세입력 포커싱
			}
		}).open();
	}
</script>
<link rel="stylesheet" href="css/memberUpdate_style.css">
</head>
<body>
	<form action="memberUpdate.do" method="post" name="frm">
		<div class="update">
			<table>
				<caption>
					<h2>회원정보 수정</h2>
				</caption>
				<tr>
					<td class="col1">회원성명</td>
					<td class="col2"><input type="text" name="memName"
						value="${mvo.memName}" readonly></td>
				</tr>

				<tr>
					<td class="col1">아이디</td>
					<td class="col2"><input type="text" name="uid"
						value="${mvo.uid}" readonly></td>
				</tr>

				<tr>
					<td class="col1">비밀번호</td>
					<td class="col2"><input type="password" name="pwd"
						value="${mvo.pwd}"></td>
				</tr>

				<tr>
					<td class="col1">비밀번호확인</td>
					<td class="col2"><input type="password" name="pwd_check"></td>
				</tr>

				<tr>
					<td class="col1">휴대폰번호</td>
					<td class="col2"><input type="text" name="phone"
						value="${mvo.phone}"></td>
				</tr>

				<tr>
					<td class="col1">이메일</td>
					<td class="col2"><input type="text" name="email"
						value="${mvo.email}"></td>
				</tr>

				<tr>
					<td class="col1">주소</td>
					<td class="col2"><input type="text" id="addr1" name="addr1"
						value="${mvo.addr1}" readonly> <input type="button"
						id="addr_but" value="주소찾기" onclick="kakaopost()"><br>
						<input type="text" id="addr2" name="addr2" value="${mvo.addr2}"></td>
				</tr>
			</table>
		</div>

		<div class="button">
			<input class="but1" type="submit" value="수정"
				onclick="return joinCheck()"> <input class="but2"
				type="reset" value="취소"
				onclick="location.href='main.jsp'">
		</div>

	</form>
</body>
</html>