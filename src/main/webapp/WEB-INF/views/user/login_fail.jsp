<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert('가입한 정보가 없거나 비밀번호가 일치하지 않습니다.')
		location.href="${pageContext.request.contextPath}/user/login"
	</script>
</body>
</html>