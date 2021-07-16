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
	<title>로그인</title>
	<!-- css, javascript
	* 로그인 : member.css, member.js
	-->
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/member.css" media="all" />
	<script type="text/javascript" src="<%= uiPath %>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/common.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/member.js"></script>
</head>
<body>
<div id="wrap">
	<div id="section-wrap" class="bg-image table-parent">
		<section class="member-section table-child">
			<div class="inner clearfix">
				<div class="article-box fr">
					<h1 class="logo"><img src="<%= uiPath %>/img/logo_big.png" alt="moment"></h1>
					<article class="form-area">
						<!-- [Dev] 로그인 기능 구현 -->
						<form action="/user/loginPro" method="post" name="loginForm" onsubmit="return loginFormCheck()">
							<fieldset>
								<legned class="blind">로그인</legned>
								<input type="text" name="member_id" placeholder="아이디">
								<input type="password" name="member_pw" placeholder="비밀번호">
								<button type="submit" class="button-login">로그인</button>
							</fieldset>
						</form>
					</article>
					<article class="link-area">
						<ul>
							<!-- [Dev] 페이지 연결 : 아이디 / 비밀번호 찾기 -->
							<li><a href="/user/accountFind">아이디 / 비밀번호 찾기</a></li>
							<!-- [Dev] 페이지 연결 : 회원가입 -->
							<li><a href="/user/userJoin">회원가입 하기</a></li>
						</ul>
					</article>
				</div>
			</div>
		</section>
	</div><!-- // section-wrap -->
</div>
</body>
</html>