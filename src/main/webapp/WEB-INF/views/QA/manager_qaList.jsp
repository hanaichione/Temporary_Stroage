<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$(".answer").on("click", function() {
			// 답변보기/하기
			var num = $(this).attr("data-num");
			location.href = "managerQA?num=" + num;
		})
	})
</script>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 목록 화면입니다.</title>
</head>
<body>
	<form action="managerQA">
		<table>
			<tr>
				<td>문의번호</td>
				<td>제목</td>
				<td>작성일</td>
				<td>답변상태</td>
			</tr>
			<tr>
				<td colspan='4'><hr></td>
			</tr>
			<c:forEach var="qdto" items="${manager_qlist}">
				<input type="hidden" name="userid">
				<tr>
					<td name="num" id="${qdto.num}">${qdto.num}</td>
					<td name="title" id="title${qdto.num}">
						<a href="managerQA?num=${qdto.num}">${qdto.title}</a>
					</td>
					<td name="writeday" id="writeday${qdto.num}">${qdto.writeday}</td>
					<td><c:if test="${qdto.answer != null}">답변완료</c:if> 
						<c:if test="${qdto.answer == null}">답변미완</c:if>
						<input type="button" id="answer" name="answer" data-num="${qdto.num}" class="answer"
						value = 
							<c:if test="${qdto.answer != null}">"답변보기"</c:if>
							<c:if test="${qdto.answer == null}">답변하기</c:if>
						>	
						<br>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>