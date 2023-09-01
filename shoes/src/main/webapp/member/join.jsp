<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
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
<link rel="stylesheet" href="css/join_style.css">
</head>
<body>
	<form action="join.do" method="post" name="frm">
		<div class="signUp">
			<table>
				<caption>
					<h2>회원가입</h2>
					<p>'*' 표시 항목은 필수 입력 항목입니다.</p>
				</caption>
				<tr>
					<td class="col1">회원성명</td>
					<td class="col2"><input type="text" name="memName"></td>
				</tr>

				<tr>
					<td class="col1">아이디</td>
					<td class="col2"><input type="text" name="uid"> * <input
						type="hidden" name="reid"> <input class="but1"
						type="button" value="중복체크" onclick="idCheck()"></td>
				</tr>

				<tr>
					<td class="col1">비밀번호</td>
					<td class="col2"><input type="password" name="pwd"> *
						<p>
							※ 비밀번호는 <span class="num">문자, 숫자, 특수문자(~!@#$%^&*)의 조합 8 ~
								16자리</span>로 입력이 가능합니다.
						</p></td>
				</tr>

				<tr>
					<td class="col1">비밀번호확인</td>
					<td class="col2"><input type="password" name="pwd_check">
						*</td>
				</tr>

				<tr>
					<td class="col1">휴대폰번호</td>
					<td class="col2"><input type="text" name="phone"
						placeholder="010-XXXX-XXXX"></td>
				</tr>

				<tr>
					<td class="col1">이메일</td>
					<td class="col2"><input type="text" id="email" name="email"
						placeholder="example@naver.com"></td>
				</tr>

				<tr>
					<td class="col1">주소</td>
					<td class="col2"><input type="text" id="addr1" name="addr1"
						readonly> <input type="button" id="addr_but" value="주소찾기"
						onclick="kakaopost()"><br> <input type="text"
						id="addr2" name="addr2" placeholder="상세주소를 입력해주세요."></td>
				</tr>
			</table>
		</div>

		<div class="button">
			<input class="but2" type="submit" value="확인"
				onclick="return joinCheck()"> <input class="but3"
				type="reset" value="취소" onclick="location.href='login.do'">
		</div>

		<%-- <tr>
			<td colspan="2">${message}</td>
		</tr> --%>
	</form>

</body>
</html>