<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>messageCheck</title>
</head>
<body>
<!-- 
	성공/실패 케이스에 대한 alert 문구 및 redirect 할 url 값을 받아서 처리합니다.
 -->
	<script>
	    alert('${message}');
	    location.href='<c:out value="${pageContext.request.contextPath}"/>${url}';
	</script>
</body>
</html>