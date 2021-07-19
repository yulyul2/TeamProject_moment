<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uiPath = "http://yul2study.dothome.co.kr";
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="<%= uiPath%>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%= uiPath%>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%= uiPath%>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>

	<form action="/post/postWritePro" method="post" enctype="multipart/form-data">
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
			<!-- <tr>
				<td colspan="2">
					<div class="inputArea">
					 <label for="post_photo2">이미지</label>
					 <input type="file" id="post_photo2" name="post_photo2" />
					 <div class="select_img"><img src="" /></div>
					  
					 <script>
					  $("#post_photo2").change(function(){
					   if(this.files && this.files[0]) {
					    var reader = new FileReader;
					    reader.onload = function(data) {
					     $(".select_img img").attr("src", data.target.result);        
					    }
					    reader.readAsDataURL(this.files[0]);
					   }
					  });
					 </script>
					<%=request.getRealPath("/") %>
					</div>
				</td>
			</tr> -->
			<tr>
				<td>
					<input type="submit" value="작성하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
