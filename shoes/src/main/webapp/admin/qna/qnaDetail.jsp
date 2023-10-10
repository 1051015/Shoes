<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="admin/qna/css/qnaDetail.css" rel="stylesheet">
<script type="text/javascript">
	function go_list() {
		var theForm = document.frm;
		theForm.action = "ShoesServlet?command=admin_qna_list";
		theForm.submit();
	}

	function go_rep(qseq) {
		var theForm = document.frm;
		theForm.qseq.value = qseq;
		theForm.action = "ShoesServlet?command=admin_qna_repsave";
		theForm.submit();
	}
</script>
</head>
<body>
	<%@include file="/admin/admin_header.jsp"%>
	<div id="wrap">
		<h1>Q&amp;A 게시판</h1>
		<form name="frm" method="post">
			<input type="hidden" name="qseq">
			<div id="orderList">
				<div id="notice_content_head">
					<h2>${qnaVO.subject}${qnaVO.rep}</h2>
					<span id="write_date"><span id="date">작성일</span> | <fmt:formatDate value="${qnaVO.indate}" /></span>
				</div>
				<div id="notice_content">
					<span>${qnaVO.content}</span>
				</div>
			</div>
			<c:choose>
				<c:when test='${qnaVO.rep=="1"}'>
					<table id="orderList2">
						<tr>
							<th>답글</th>
							<td id="reply"><textarea name="reply" rows="3" cols="50"></textarea></td>
							<td id="submit"><input type="button" class="submit" value="저장" onClick="go_rep('${qnaVO.qseq}')"></td>
						</tr>
					</table>
					<br>
				</c:when>
				<c:otherwise>
					<table id="orderList2">
						<tr>
							<th>댓글</th>
							<td>${qnaVO.reply}</td>
						</tr>
					</table>
				</c:otherwise>
			</c:choose>
			<div id="buttons">
				<input type="button" class="btn" value="목록" onClick="go_list()">
			</div>
		</form>
	</div>
</body>
</html>