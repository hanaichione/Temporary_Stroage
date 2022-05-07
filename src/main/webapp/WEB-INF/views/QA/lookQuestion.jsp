<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {		
		$("#update").on("click", function() {
			var contents = $(this).attr("data-contents");
			$("form").attr("action", "updateQuestion?contents="+contents);
			$("form").submit();
		})
		$("#delete").on("click", function() {
			$("form").attr("action", "deleteQuestion");
			$("form").submit();
		})
	})
</script>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- ${questionDto}, 질문 출력, 질문 수정, 질문 삭제 -->
<body>
	<form name="myForm"> <!-- 수정, 삭제 버튼을 클릭했을 때 이동 -->
	<input type="hidden" name=num value="${questionDto.num}">
		<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td height="10"><b>1:1 문의</b></td>
		</tr>
		<tr>
			<table>
			<tr>
			<th>유형</th>
			<td>
				<select name="category" id="category">
					<option <c:if test="${questionDto.category=='주문/결제/반품/교환문의'}">selected</c:if> >
					주문/결제/반품/교환문의</option>
					<option <c:if test="${questionDto.category=='상품문의'}">selected</c:if> >상품문의</option>
					<option <c:if test="${questionDto.category=='배송문의'}">selected</c:if> >배송문의</option>
					<option <c:if test="${questionDto.category=='기타문의'}">selected</c:if> >기타문의</option>
				</select>
			</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" id="title" name="title" value="${questionDto.title}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"
				style="width: 200px; height: 50px;" value="${questionDto.contents}">
				</td>
			</tr>
			</table>
		</tr>
		</table>
		<input type="button" id="update" value="수정하기" data-question="${questionDto.contents}">
		<input type="button" id="delete" value="삭제하기">
	</form>
	<a href="user_qaList">이전페이지로</a>
</body>
</html>