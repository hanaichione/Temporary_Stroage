<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 목록 화면</title>
<!-- 수정, 삭제는 답변이 달리기 전인 질문만 가능 -->
<!-- 수정하기 클릭하면 질문 작성 화면으로 넘어가야됨 -->
<!-- 삭제하기 클릭하면 해당 질문만 삭제되고 나머지는 그대로 -->

</head>
<body>
	<form action="userQA" method="post">
	<table>
	<tr>
		<td>제목</td>
		<td>작성일</td>
		<td>답변상태</td>
	</tr>
	<tr>
		<td colspan='2'><hr></td>
	</tr>
		<%-- <c:forEach var="dto" items="${question}"> --%>
			<tr>
				<td>${question.title}</td>
				<td>${question.writeday}</td>
				<td>
					<c:if test="${question.answer != null}">답변완료</c:if>
					<c:if test="${question.answer == null}">답변미완
						<button id="update">수정</button>
						<button id="delete">삭제</button>
					</c:if>
				</td>
			</tr>
		<%-- </c:forEach> --%>
	</table>
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>