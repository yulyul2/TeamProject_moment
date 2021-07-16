<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/login.jsp
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member.css" media="all" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
=======
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/member.css" media="all" />
	<script type="text/javascript" src="<%= uiPath %>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/common.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/member.js"></script>
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/login.jsp
</head>
<body>
<div id="wrap">
	<div id="section-wrap" class="bg-image table-parent">
		<section class="member-section table-child">
			<div class="inner clearfix">
				<div class="article-box fr">
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/login.jsp
					<h1 class="logo"><img src="${pageContext.request.contextPath}/resources/img/logo_big.png" alt="moment"></h1>
					<article class="form-area">
						<!-- [Dev] 로그인 기능 구현 -->
						<form action="${pageContext.request.contextPath}/user/loginPro" method="post" name="loginForm" onsubmit="return loginFormCheck()">
=======
					<h1 class="logo"><img src="<%= uiPath %>/img/logo_big.png" alt="moment"></h1>
					<article class="form-area">
						<!-- [Dev] 로그인 기능 구현 -->
						<form action="/user/loginPro" method="post" name="loginForm" onsubmit="return loginFormCheck()">
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/login.jsp
							<fieldset>
								<legend class="blind">로그인</legend>
								<input type="text" name="member_id" placeholder="아이디">
								<input type="password" name="member_pw" placeholder="비밀번호">
								<button type="submit" class="button-login">로그인</button>
							</fieldset>
						</form>
					</article>
					<article class="link-area">
						<ul>
							<!-- [Dev] 페이지 연결 : 아이디 / 비밀번호 찾기 -->
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/login.jsp
							<li><a href="${pageContext.request.contextPath}/user/searchIdPw">아이디 / 비밀번호 찾기</a></li>
							<!-- [Dev] 페이지 연결 : 회원가입 -->
							<li><a href="${pageContext.request.contextPath}/user/join">회원가입 하기</a></li>
=======
							<li><a href="/user/accountFind">아이디 / 비밀번호 찾기</a></li>
							<!-- [Dev] 페이지 연결 : 회원가입 -->
							<li><a href="/user/userJoin">회원가입 하기</a></li>
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/login.jsp
						</ul>
					</article>
				</div>
			</div>
		</section>
	</div><!-- // section-wrap -->
</div>
</body>
</html>