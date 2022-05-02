<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>관리자 전용 페이지 입니다..</h1>
<jsp:include page="admin/top.jsp" flush="true"></jsp:include><BR>
<jsp:include page="admin/menu.jsp" flush="true"></jsp:include>
<hr>
<jsp:include page="admin/adminForm.jsp"></jsp:include>
</body>
</html>