<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uiPath = "http://yul2study.dothome.co.kr";
%> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원가입</title>
	<!-- css, javascript
	* 회원가입 : member.css, member.js
	--> 
	<link rel="stylesheet" type="text/css" href="resources/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="resources/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="resources/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="resources/css/member.css" media="all" />
	<script type="text/javascript" src="resources/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="resources/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
	<script type="text/javascript" src="resources/js/member.js"></script>
</head>
<body>
<!-- 이미지 리사이징 처리
 * logo 이미지 제외 
 * 모든 이미지의 부모에는 class 'image-parent' 추가
 * 모든 이미지 자신에게는 class 'image-load' 추가 
-->
<div id="wrap">
	<div id="section-wrap" class="bg-image table-parent">
		<section class="member-section table-child">
			<div class="inner clearfix">
				<div class="article-box fr">
					<h1 class="logo blind"><img src="resources/img/logo_big.png" alt="moment"></h1>
					<article class="image-area">
						<form action="javascript:void(0)" method="post" name="formImageUpload">
							<fieldset>
								<legned class="blind">이미지 업로드</legned>
								<label for="imageUpload" class="image-upload">
									<span class="image image-parent">
										<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) 
											기본 이미지일 경우 class 'default' 추가 / 그 외엔 제거
										-->
										<img src="resources/img/profile/default.png" alt="프로필 이미지" class="image-load default">
									</span>
									<span class="button-upload sp-button"><span class="blind">이미지 수정</span></span>
								</label>
								<input type="file" id="member_image" name="member_image" style="display:none"/>
							</fieldset>
						</form>
					</article>
					<article class="form-area mt-45">
						<!-- [Dev] 페이지 연결 : 로그인 -->
						<a href="/member/login" class="button-back">돌아가기</a>
						<!-- [Dev] 회원가입 기능 구현 -->
						<form action="/user/join" method="post" name="joinForm" onsubmit="return joinFormCheck()">
							<fieldset>
								<legned class="blind">회원가입</legned>
								<input type="text" id="member_id" name="member_id" placeholder="아이디">
								<input type="password" id="member_pw" name="member_pw" placeholder="비밀번호">
								<input type="password" id="member_pw2" name="member_pw2" placeholder="비밀번호 확인">
								<input type="text" id="member_name" name="member_name" placeholder="이름">
								<input type="text" id="member_tel" name="member_tel" placeholder="휴대폰 번호">
								<input type="email" id="member_email" name="member_email" placeholder="이메일 주소">
								<button type="submit" class="button-join">회원가입</button>
							</fieldset>
						</form>
					</article>
				</div>
			</div>
		</section>
	</div><!-- // section-wrap -->
</div>
</body>
</html>