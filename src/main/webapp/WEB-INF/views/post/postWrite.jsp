<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="kr.co.vo.userVO" %>
<%
	userVO currentSession = (userVO) session.getAttribute("loginUser");
	
	String id = currentSession.getmember_id();

	// 세션 정보가 없으면 로그인 페이지로 리다이렉트
	if(currentSession == null) response.sendRedirect("login");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시물 작성하기</title>
	<!-- css, javascript
	* 게시물 작성하기 : post.css, post.js
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/post.css" media="all" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/post.js"></script>
</head>
<body>
<!-- 이미지 리사이징 처리
	* logo 이미지 제외 
	* 모든 이미지의 부모에는 class 'image-parent' 추가
	* 모든 이미지 자신에게는 class 'image-load' 추가 
-->
<div id="wrap">
	<c:import url="../common/header.jsp"></c:import> 
	<div id="section-wrap" class="bg-fafafa">
		<section class="inner post-section">
			<h2>게시물 작성하기</h2>
			<article>
				<form action="/post/postWritePro" method="post" name="postWriteForm" onsubmit="return postWriteFormCheck()" enctype="multipart/form-data">
					<fieldset><!--   -->
						<legend class="blind">게시물 작성</legend>
						<input type="hidden" value="<%=id %>" name="post_id">
						<textarea name="post_content" maxlength="70" placeholder="내용 작성하기"></textarea>
						<div class="photo-wrap">
							<div class="photo table-parent image-parent">
								<!-- ** type file 속성
									accept : 서버로 업로드할 수 있는 파일의 타입을 명시 (img/* 의 경우 모든 타입의 이미지 파일이 허용)
									multiple : 여러개 선택 가능
								-->
								<input type="file" name="file" id="post_photo2" class="blind"  accept="img/*/><!-- " -->
								<div id="photoAdd" class="button-add table-child">
									<label for="post_photo2" class="photo-upload">
										<span class="icon sp-button"><span class="blind">사진추가</span></span>
										<span class="text">사진추가</span>
									</label>
								</div>
								<button type="button" id="photoDelete" class="button-delete sp-button"><span class="blind">사진삭제</span></button>
								<div id="photoPreview"></div>
							</div>
						</div>
						<div class="button-area">
							<button type="submit" class="button-write">작성완료</button>
						</div>
					</fieldset>
				</form>
			</article>
		</section>
	</div><!-- // section-wrap -->
	<c:import url="../common/footer.jsp"></c:import> 
</div>

</body>
</html>
