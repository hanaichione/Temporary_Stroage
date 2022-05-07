<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
	<form action="loginCheck/question" method="post">
	
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
					<option selected>문의 유형을 선택해 주세요</option>
					<option>주문/결제/반품/교환문의</option>
					<option>상품문의</option>
					<option>배송문의</option>
					<option>기타문의</option>
				</select>
			</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" id="title" name="title" value="제목을 입력해주세요"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"
				style="width: 200px; height: 50px;">
				</td>
			</tr>
			</table>
			
		</tr>
		</table>
		
		<input type="submit" id="enroll" value="등록">
	</form>

</body>
</html>