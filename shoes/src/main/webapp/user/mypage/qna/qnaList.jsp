<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link href="user/mypage/qna/css/qnaList.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div id="wrap">
		<%@ include file="/user/mypage/myPageHeadSide.jsp"%>
		<h2>Q&A</h2>
		<form name="formm" method="post">
			<div id="qnaList">
				<table id="cartList">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>답변 여부</th>
					</tr>
					<c:forEach items="${qnaList}" var="qnaVO">
						<tr>
							<td>${qnaVO.qseq}</td>
							<td><a
								href="ShoesServlet?command=qna_view&qseq=${qnaVO.qseq}">
									${qnaVO.subject} </a></td>
							<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td>
							<td><c:choose>
									<c:when test="${qnaVO.rep==1}"> no </c:when>
									<c:when test="${qnaVO.rep==2}"> yes </c:when>
								</c:choose></td>
						</tr>
					</c:forEach>
				</table>
				<div class="clear"></div>
				<div id="buttons">
					<input type="button" value="질문하기" id="write_submit"
						onclick="location.href='ShoesServlet?command=qna_write_form'">
					<input type="button" value="쇼핑 계속하기" id="write_cancel"
						onclick="location.href='ShoesServlet?command=index'">
				</div>
			</div>
		</form>
	</div>
	</div>
	<%@ include file="/footer.jsp"%>
</body>