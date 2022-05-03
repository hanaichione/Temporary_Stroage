<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>답변 작성 화면입니다.</h1>
	<jsp:include page="admin/top.jsp" flush="true"></jsp:include><BR>
	<jsp:include page="admin/menu.jsp" flush="true"></jsp:include>
	<hr>
	<jsp:include page="QA/answer.jsp"></jsp:include>
</body>
</html>