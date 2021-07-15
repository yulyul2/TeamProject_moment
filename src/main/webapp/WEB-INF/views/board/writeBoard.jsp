<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/board/writeBoardPro" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>
					아이디
				</td>
				<td>
					<input type="text" name="post_id">
				</td>
			</tr>
			<tr>
				<td>
					내용
				</td>
				<td>
					<input type="text" name="post_content">
				</td>
			</tr>
			<tr>
				<td>
					사진올리기
				</td>
				<td>
					<!-- <input type="file" name="post_photo01"> -->
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="inputArea">
					 <label for="post_photo2">이미지</label>
					 <input type="file" id="post_photo2" name="file" />
					 <div class="select_img"><img src="" /></div>
					 
					 <script>
					  $("#post_photo2").change(function(){
					   if(this.files && this.files[0]) {
					    var reader = new FileReader;
					    reader.onload = function(data) {
					     $(".select_img img").attr("src", data.target.result).width(500);        
					    }
					    reader.readAsDataURL(this.files[0]);
					   }
					  });
					 </script>
					
					</div>
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
