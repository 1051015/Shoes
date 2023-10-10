<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link href="user/mypage/qna/css/qnaWrite.css" rel="stylesheet">
</head>
<body>
	<%@include file="/header.jsp"%>
	<div id="wrap">
		<%@include file="/user/mypage/myPageHeadSide.jsp"%>
		<h2>Qna글쓰기</h2>
		<form name="formm" method="post" action="ShoesServlet?command=qna_write">
			<div id="qna_write">
				<table>
					<tr>
						<th>제목</th>
						<td>
							<div id="input_wrap">
								<input type="text" name="subject" size="77" placeholder="제목을 77자 이내로 입력하세요">
							</div>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<div id="input_wrap">
								<textarea rows="8" cols="65" name="content" placeholder="내용을 입력하세요" ></textarea>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div class="clear"></div>
			<div id="buttons">
				<input type="submit" value="글쓰기" id="write_submit">
				<input type="button" value="취소" id="write_cancel" onclick="location.href='ShoesServlet?command=index'">
			</div>
		</form>
	</div>
	</div>
</body>
</html>