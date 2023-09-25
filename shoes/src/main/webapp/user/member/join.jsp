<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="user/member/css/join_style.css">
<script type="text/javascript" src="user/script/member.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<form method="post" action="" name="frm" id="join">
		<div class="container">
			<h1>회원가입</h1>
			<div class="insert">
				<table>
					<caption>*은 필수 입력항목입니다.</caption>
					<tr>
						<td class="col1"><span class="num">*</span>&nbsp;아이디</td>
						<td class="col2"><input type="text" name="id"> <input
							type="hidden" name="reid"> <input class="id_but"
							type="button" value="중복확인" onclick="idCheck()"></td>
					</tr>

					<tr>
						<td class="col1"><span class="num">*</span>&nbsp;비밀번호</td>
						<td class="col2"><input type="password" name="pwd"></td>
					</tr>

					<tr>
						<td class="col1"><span class="num">*</span>&nbsp;비밀번호 확인</td>
						<td class="col2"><input type="password" name="pwdCheck"></td>
					</tr>

					<tr>
						<td class="col1"><span class="num">*</span>&nbsp;회원성명</td>
						<td class="col2"><input type="text" name="name"></td>
					</tr>

					<tr>
						<td class="col1"><span class="num">*</span>&nbsp;이메일</td>
						<td class="col2"><input type="text" name="email"
							placeholder="example@naver.com"></td>
					</tr>

					<tr>
						<td class="col1">우편번호</td>
						<td class="col2"><input type="text" id="zip_code"
							name="zip_num" size="10">&nbsp;<input type="button"
							value="주소찾기" id="addr_but" onclick="openZipSearch()"></td>
					</tr>

					<tr>
						<td class="col1">주소</td>
						<td class="col2"><input type="text" placeholder="도로명주소"
							id="addr" class="addr1" name="addr1" readonly><br> <input
							type="text" placeholder="상세주소를 입력해주세요." id="addr_dtl"
							class="addr2" name="addr2"></td>
					</tr>

					<tr>
						<td class="col1">휴대폰번호</td>
						<td class="col2"><input type="text" name="phone"
							placeholder="010-XXXX-XXXX"></td>
					</tr>
				</table>
			</div>

			<div class="create">
				<input class="join_but" type="submit" value="회원가입"
					onclick="joinCheck()"> <input class="home_but"
					type="button" value="홈으로"
					onclick="location.href='ShoesServlet?command=index'">
			</div>
		</div>
	</form>
	<%@ include file="/footer.jsp"%>
</body>
</html>