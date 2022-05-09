<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<c:if test="${!empty qmesg}">
	<script>
		alert("${qmesg}");
		<%session.removeAttribute("qmesg");%>
	</script>
</c:if>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1:1문의 목록 화면입니다.</h1>
	<jsp:include page="common/top.jsp" flush="true" /><br>
	<jsp:include page="common/menu.jsp" flush="true" />
	<hr>
	<jsp:include page="QA/user_qaList.jsp" flush="true" />
</body>
</html>