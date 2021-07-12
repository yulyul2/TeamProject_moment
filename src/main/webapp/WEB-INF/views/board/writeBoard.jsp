<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/writeBoardPro" method="post">
		<table>
			<tr>
				<td>
					아이디
				<td>
				<td>
					<input type="text" name="post_id">
				</td>
			</tr>
			<tr>
				<td>
					내용
				<td>
				<td>
					<input type="text" name="post_content">
				</td>
			</tr>
			<tr>
				<td>
					사진올리기
				<td>
				<td>
					<input type="file" name="post_photo01">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="작성하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
