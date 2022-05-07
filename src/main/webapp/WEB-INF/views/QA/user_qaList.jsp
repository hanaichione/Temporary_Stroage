<%@page import="com.dto.QaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$(".lookA").on("click", function() {
			//답변보기
			var num = $(this).attr("data-num");
			location.href = "lookAnswer?num=" + num;
		})
		$(".lookQ").on("click", function() {
			//질문보기
			var num = $(this).attr("data-num");
			location.href = "lookQuestion?num=" + num;
		})
		
		$("#writeQ").on("click", function () {
			//문의쓰기
			location.href = "userQA";
		})
	})
</script>

<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 목록 화면</title>
<!-- 수정, 삭제는 답변이 달리기 전인 질문만 가능 -->
<!-- 수정하기 클릭하면 질문 작성 화면으로 넘어가야됨 -->
<!-- 삭제하기 클릭하면 해당 질문만 삭제되고 나머지는 그대로 -->

</head>
<body>
	<form name="myForm" method="get">
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
			<c:forEach var="qdto" items="${qlist}">
				<tr>
					<td name="num" id="${qdto.num}">${qdto.num}</td>
					<td name="title" id="title${qdto.num}">
						<c:if test="${qdto.answer != null}">
							<a href="lookAnswer?num=${qdto.num}">${qdto.title}</a>
						</c:if> <c:if test="${qdto.answer == null}">
							<a href="lookQuestion?num=${qdto.num}">${qdto.title}</a>
						</c:if></td>
					<td name="writeday" id="writeday${qdto.num}">${qdto.writeday}</td>
					<td><c:if test="${qdto.answer != null}">답변완료
						<input type="button" id="lookA" data-num="${qdto.num}" class="lookA" value="답변보기">
							<br>
						</c:if> <c:if test="${qdto.answer == null}">답변미완
						<input type="button" id="lookQ" data-num="${qdto.num}" class="lookQ" value="문의보기">
							<br>
						</c:if></td>
				</tr>
			</c:forEach>
		</table>
		<input type="button" id="writeQ" value="문의쓰기">
	</form>
</body>
</html>