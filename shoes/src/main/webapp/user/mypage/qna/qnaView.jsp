<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="user/mypage/qna/css/qnaView.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div id="wrap">
		<%@ include file="/user/mypage/myPageHeadSide.jsp"%>
		<h2>Q&A 내역</h2>
		<form name="formm" method="post">
			<div id="notice_wrap">
				<div id="notice_title">
					<h2>${qnaVO.subject}</h2>
				</div>
				<table id="notice">
					<tr>
						<th>등록일</th>
						<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td>
					</tr>
					<tr>
						<th>질문내용</th>
						<td><textarea rows="8" cols="65" name="content" readonly>${qnaVO.content}</textarea></td>
					</tr>
					<tr>
						<th>답변 내용</th>
						<td>${qnaVO.reply}</td>
					</tr>
				</table>
			</div>
			<div class="clear"></div>
			<div id="buttons">
				<input type="button" value="목록보기" id="write_submit" onclick="location.href='ShoesServlet?command=qna_list'">
				<input type="button" value="쇼핑 계속하기" id="write_cancel" onclick="location.href='ShoesServlet?command=index'">
			</div>
		</form>
	</div>
	</div>
</body>
</html>