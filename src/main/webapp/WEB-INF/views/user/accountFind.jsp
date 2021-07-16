<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>아이디/비밀번호 찾기</title>
	<!-- css, javascript
	* 아이디/비밀번호 찾기 : member.css, member.js
	-->
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/searchIdPw.jsp
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
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/accountFind.jsp
</head>
<body>

<div id="wrap">
	<div id="section-wrap">
		<section class="member-section">
			<div class="inner clearfix full-height table-parent">
				<div class="table-child">
					<div class="comm-tab-wrap">
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/searchIdPw.jsp
						<h1 class="logo"><img src="${pageContext.request.contextPath}/resources/img/logo_big.png" alt="moment"></h1>
=======
						<h1 class="logo"><img src="<%= uiPath %>/img/logo_big.png" alt="moment"></h1>
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/accountFind.jsp
						<ul class="tab-menu">
							<!-- li : class 'on' 추가/제거 -->
							<li class="tab-id">아이디 찾기</li>
							<li class="tab-password">비밀번호 찾기</li>
						</ul>
								
						<!-- article-box : class 'show' 추가/제거 -->
						<div class="article-box tab-box m-auto">
							<article class="form-area">
								<!-- [Dev] 페이지 연결 : 로그인 -->
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/searchIdPw.jsp
								<a href="${pageContext.request.contextPath}" class="button-back">돌아가기</a>
								<!-- [Dev] 아이디 찾기 기능 구현 -->
								<form action="${pageContext.request.contextPath}/user/searchId" method="post" name="findIdForm" onsubmit="return findIdFormCheck()">
									<fieldset>
										<legend class="blind">로그인</legend>
										<input type="text" name="member_name" id="member_name" placeholder="이름">
										<input type="email" name="member_email" id="member_email" placeholder="이메일 주소">
=======
								<a href="/user/login" class="button-back">돌아가기</a>
								<!-- [Dev] 아이디 찾기 기능 구현 -->
								<form action="/user/searchId" method="post" name="findIdForm" onsubmit="return findIdFormCheck()">
									<fieldset>
										<legned class="blind">로그인</legned>
										<input type="text" name="user_name" id="user_name" placeholder="이름">
										<input type="email" name="user_email" id="user_email" placeholder="이메일 주소">
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/accountFind.jsp
										<div class="output-box">
    										<p class="join-id">아이디 : ${Id }</p>
										</div>
										<button type="submit" class="button-find-id">아이디 찾기</button>
									</fieldset>
								</form>
							</article>
						</div>
						
						<!-- 
						현재 문제 
						1. 패스워드를 못찾음.
						 - 예상
						 - Controller에서 위부터 Data를 전달하므로 name값이 안되서?
						 
						 -->
						
						<div class="article-box tab-box m-auto">
							<article class="form-area">
								<!-- [Dev] 페이지 연결 : 로그인 -->
								<a href="${pageContext.request.contextPath}" class="button-back">돌아가기</a>
								<!-- [Dev] 아이디 찾기 기능 구현 -->
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/member/searchIdPw.jsp
								<form action="${pageContext.request.contextPath}/user/searchPw" method="post" name="findPasswordForm" onsubmit="return findPasswordFormCheck()">
									<fieldset>
										<legend class="blind">로그인</legend>
										<input type="text" name="member_id" id="member_id" placeholder="아이디">
										<input type="email" name="member_email" id="member_email" placeholder="이메일 주소">
=======
								<form action="/user/searchPw" method="post" name="findPasswordForm" onsubmit="return findPasswordFormCheck()">
									<fieldset>
										<legned class="blind">로그인</legned>
										<input type="text" name="user_id" id="user_id" placeholder="아이디">
										<input type="email" name="user_email" id="user_email" placeholder="이메일 주소">
										
>>>>>>> 39e3138f36d1e947b721b2f2eeb8939a557e8c96:src/main/webapp/WEB-INF/views/user/accountFind.jsp
										<div class="output-box">
											<p class="join-password">비밀번호 : ${Pw}</p>
										</div>
										<button type="submit" class="button-find-password"SS>비밀번호 찾기</button>
									</fieldset>
								</form>
							</article>
						</div>
						
					</div>
				</div>
			</div>
		</section>
	</div><!-- // section-wrap -->
</div>

</body>
</html>