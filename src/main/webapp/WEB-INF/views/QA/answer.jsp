<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 밥</title>
<!-- 답변 입력, 답변 내용을 업데이트, 목록으로 전환, ${manager_qdto}-->
</head>
<body>
	<form action="answerUpdate">
	<input type="hidden" name="num" value="${manager_qdto.num}">
		<table border="1">
			<tr>
				<th>문의번호</th>
				<th>작성자</th>
				<th>문의유형</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<tr>
				<td>${manager_qdto.num}</td>
				<td>${manager_qdto.userid}</td>
				<td>${manager_qdto.category}</td>
				<td>${manager_qdto.title}</td>
				<td>${manager_qdto.writeday}</td>
			</tr>
		</table>
		<br>
		<table>
			<tr>
				<th>질문</th>
				<td>${manager_qdto.contents}</td>
			</tr>
			<tr>
				<th>답변</th>
				<td>
					<!-- 답변이 없는 경우, 답변 작성 -->
					<c:if test="${manager_qdto.answer == null}">
						<input type="text" id="answer" name="answer" value="${manager_qdto.answer}"
						style="width: 300px; height: 100px;">
					</c:if>
					<!-- 답변이 있는 경우, 답변을 출력만 해줌 -->
					<c:if test="${manager_qdto.answer != null}">
						${manager_qdto.answer}
					</c:if>
				</td>
			</tr>
		</table>
		<!-- 답변이 없는 경우 작성된 답변, 질문번호를 controller로 전송 -->
		<c:if test="${manager_qdto.answer == null}">
			<input type="submit" id="answerBtn" value="답변전송">
		</c:if>
		<!-- 답변을 조회만 하는 경우, 목록페이지 링크 -->
		<c:if test="${manager_qdto.answer != null}">
			<a href="manager_qaList">이전페이지로</a>
		</c:if>
	</form>
</body>
</html>