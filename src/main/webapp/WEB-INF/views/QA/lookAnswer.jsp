<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- ${answerDto}, 질문 및 답변 모두 출력, 질문 수정 및 삭제 불가하며 조회만 가능 -->
</head>
<body>
	<form name="myForm"> <!-- 조회 기능만 있음, action 불필요 -->
		<table border="1">
			<tr>
				<th>문의번호</th>
				<th>문의유형</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<tr>
				<td>${answerDto.num}</td>
				<td>${answerDto.category}</td>
				<td>${answerDto.title}</td>
				<td>${answerDto.writeday}</td>
			</tr>
		</table>
		<br>
		<table>
			<tr>
				<th>문의내용</th>
				<td>${answerDto.contents}</td>
			</tr>
			<tr>
				<th>답변</th>
				<td>
					${answerDto.answer}
				</td>
			</tr>
		</table>
			<a href="user_qaList">이전페이지로</a>
	</form>
</body>
</html>