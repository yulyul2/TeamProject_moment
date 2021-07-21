<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원탈퇴</title>
	<!-- css, javascript
	* 회원가입 : member.css, member.js
	--> 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/myinfo.css" media="all" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myinfo.js"></script>
</head>
<body>
<!-- 이미지 리사이징 처리
	* logo 이미지 제외 
	* 모든 이미지의 부모에는 class 'image-parent' 추가
	* 모든 이미지 자신에게는 class 'image-load' 추가 
-->
<div id="wrap">
	<c:import url="../common/header.jsp"></c:import> 
	<div id="section-wrap" class="inner clearfix">
		<c:import url="../common/sideMenu.jsp"></c:import> 
		<section class="main-section clearfix">
			<div class="comm-tab-wrap">
				<ul class="tab-menu">
					<!-- li : class 'on' 추가/제거 / 게시물로 링크 연결 -->
					<li class="tab-bookmark"><a href="${pageContext.request.contextPath}/user/myInfo">개인정보 수정</a></li>
					<li class="tab-post on">회원탈퇴</li>
				</ul>
				<form action="${pageContext.request.contextPath}/user/leave" method="post" name="leaveForm" onsubmit="return leaveFormCheck()">
					<article class="delete-member">
						<h2>회원탈퇴 하기</h2>
						<fieldset>
							<legend class="blind">회원탈퇴 하기</legend>
							<label for="label-password">비밀번호 확인</label>
							<input type="password" name="member_pw" id="label-password" placeholder="비밀번호를 입력해주세요." value="">
							<label for="label-reason">탙퇴사유 작성</label>
							<textarea name="reason" maxlength="100" id="label-reason" placeholder="탈퇴사유를 입력해주세요."></textarea>
							<div class="button-area">
								<button type="reset" class="button-reset">다시작성</button>
								<button type="submit" class="button-leave button-bg-orange">회원탈퇴</button>
							</div>
						</fieldset>
					</article>
				</form>
			</div>
		</section>
	</div><!-- // section-wrap -->
	<c:import url="../common/footer.jsp"></c:import> 
</div>
</body>
</html>