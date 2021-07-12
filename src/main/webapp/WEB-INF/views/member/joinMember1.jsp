<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<section id="container">
		<form action="/member/joinMember" method="post">
			<table>
				<tr>
					<td>
						id
					</td>
					<td>
					<input type="text" id="member_id" name="member_id">
					</td>
				</tr>
				<tr>
					<td>
						pw
					</td>
					<td>
					<input type="password" id="member_pw" name="member_pw">
					</td>
				</tr>
				<tr>
					<td>
						2차 pw
					</td>
					<td>
					<input type="password" id="member_pw2" name="member_pw2">
					</td>
				</tr>
				<tr>
					<td>
						name
					</td>
					<td>
					<input type="text" id="member_name" name="member_name">
					</td>
				</tr>
				<tr>
					<td>
						tel
					</td>
					<td>
					<input type="text" id="member_tel" name="member_tel">
					</td>
				</tr>
				<tr>
					<td>
						email
					</td>
					<td>
					<input type="email" id="member_email" name="member_email">
					</td>
				</tr>
				
				<tr>
					<td>
						이미지 입력
					</td>
					<td>
					<input type="file" id="member_image" name="member_image">
					</td>
				</tr>
				<tr>
					<td>
						info
					</td>
					<td>
						<textarea rows="5" cols="20" id="member_info" name="member_info"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="회원가입">
						<input type="button" value="뒤로가기" onclick="location.href='/board/main'">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>