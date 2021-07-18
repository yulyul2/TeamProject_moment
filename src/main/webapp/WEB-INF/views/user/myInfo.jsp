<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>개인정보 수정</title>
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
	<div id="header-wrap">
	<header class="inner clearfix">
		<h1 class="logo">
			<a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="moment"></a>
		</h1>
		<div class="search-input-wrap has-comm-layer">
			<h2 class="blind">검색하기</h2>
			<div class="search-input">
				<!-- [Dev] 검색 기능 구현 -->
				<form action="javascript:void(0)" method="post" name="searchForm" >
					<fieldset>
						<legend class="blind">검색</legend>
						<input type="text" placeholder="검색하기" class="input-search">
						<button type="submit" class="button-search sp-button button-comm-layer-open"><span class="blind">검색하기</span></button>
					</fieldset>
				</form>
			</div>
			<!-- 레이어 : 검색 -->
			<div class="layer-search comm-layer">
				<h3 class="blind">검색 레이어</h3>
				<button type="button" class="button-search-close sp-button button-comm-layer-close"><span class="blind">검색 레이어 닫기</span></button>
				<div class="layer-inner">
					<div class="list-area">
						<p class="title">최근 검색 내역</p>
						<ul class="list comm-list">
							<li>
								<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">Lee_sy</span>
								</a>
								<!-- [Dev] 팔로우 기능 구현 -->
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">kim_hw</span>
								</a>
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">Park_hg</span>
								</a>
								<button type="button" class="button-follow">팔로우</button>
							</li>
						</ul>
						<p class="title">최근 검색 내역</p>
						<p class="message">최근 검색 내역이 없습니다.</p>
					</div>
					<button type="button" class="button-search-delete comm-list-btn">검색내역 삭제</button>
				</div>
			</div>
		</div>
		<div class="all-menu-wrap parent-toggle">
			<button type="button" class="button-all-menu sp-button button-parent-toggle"><span class="blind">전체 메뉴</span></button>
			<div class="layer-all-menu comm-layer simple">
				<h3 class="blind">전체 메뉴 레이어</h3>
				<div class="layer-inner">
					<ul class="list">
					<!-- 관리자 계정 -->
						<!-- [Dev] 회원관리 페이지로 연결 -->
						<li><a href="javascript:void(0)">회원관리</a></li>
						<!-- [Dev] 공지사항 작성 페이지로 연결 -->
						<li><a href="javascript:void(0)">공지사항 작성</a></li>
					<!-- 사용자 계정 -->
						<!-- [Dev] 개인정보 페이지로 연결 -->
						<li><a href="javascript:void(0)">개인정보</a></li>
						<!-- [Dev] 게시물 상세 페이지로 연결 -->
						<li><a href="javascript:void(0)">게시물 관리</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
</div><!-- // header-wrap -->
	<div id="section-wrap" class="inner clearfix">
		<section class="side-section clearfix full-height">
			<article class="profile">
				<h2 class="blind">프로필</h2>
				<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
				<a href="javascript:void(0)" class="clearfix">
					<div class="image-area">
						<span class="image image-parent">
							<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) 
								기본 이미지일 경우 class 'default' 추가 / 그 외엔 제거
							-->
							<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load default">
						</span>
					</div>
					<div class="info-area">
						<p class="my-id">yulyul2</p>
						<p class="my-name">장유리</p>
					</div>
				</a>
				<!-- [Dev] 내 게시물일 경우 노출되는 버튼 : 내 정보 수정 페이지로 연결  -->
				<a href="javascript:void(0)" class="button-myinfo"><span>내 정보 수정</span></a>
				<div class="intro-area">
					<div class="count-box">
						<!-- [Dev] 게시물의 수 -->
						<span class="post">게시물 <span class="count">55</span>개</span>
						<!-- [Dev] "나를" 팔로우한 사람의 수 -->
						<span class="follwer">팔로워 <span class="count">122</span>명</span>
						<!-- [Dev] "내가" 팔로우한 사람의 수 -->
						<span class="follwing">팔로잉 <span class="count">136</span>명</span>
					</div>
					<div class="intro-box">
						<!-- [Dev] 소개글 : 기본으로는 "안녕하세요." 값 노출 / 내 정보 수정 페이지에서 수정 가능
							disabled : 비활성화 (수정 불가)
						-->
						<textarea name="myIntro" disabled>안녕하세요.</textarea>
					</div>
				</div>
			</article>
		</section>
		<section class="main-section clearfix">
			<div class="comm-tab-wrap">
				<ul class="tab-menu">
					<!-- li : class 'on' 추가/제거 / 게시물로 링크 연결 -->
					<li class="tab-bookmark on">개인정보 수정</li>
					<li class="tab-post"><a href="${pageContext.request.contextPath}/user/leave">회원탈퇴</a></li>
				</ul>
				<form action="${pageContext.request.contextPath}/user/myInfo" method="post" name="myinfoEditFormCheck">
					<article class="edit-profile">
						<h2>프로필 사진 / 소개글 수정</h2>
						<fieldset>
							<legend class="blind">프로필 사진 / 소개글 수정</legend>
							<label for="imageUpload" class="image-upload">
								<span class="image image-parent">
									<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) 
										기본 이미지일 경우 class 'default' 추가 / 그 외엔 제거
									-->
									<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load default">
								</span>
								<span class="button-upload sp-button"><span class="blind">이미지 수정</span></span>
							</label>
							<input type="file" name="imageUpload" id="imageUpload" style="display:none"/>
							<textarea name="myIntro" maxlength="70"></textarea>
						</fieldset>
					</article>
					<article class="edit-account">
						<h2>계정 정보 수정</h2>
						<fieldset class="clearfix">
							<legend class="blind">계정 정보 수정</legend>
							<label for="label-name">이름</label>
							<input type="text" name="name" id="label-name" placeholder="이름" value="">
							<label for="label-password">비밀번호</label>
							<input type="password" name="password" id="label-password" placeholder="비밀번호" value="">
							<label for="label-passwordCheck">비밀번호 확인</label>
							<input type="password" name="passwordCheck" id="label-passwordCheck" placeholder="비밀번호 확인" value="">
							<label for="label-tel">휴대폰 번호</label>
							<input type="text" name="tel" id="label-tel" placeholder="휴대폰 번호" value="">
							<label for="label-email">이메일 주소</label>
							<input type="text" name="email" id="label-email" placeholder="이메일 주소" value="">
							<div class="button-area">
								<button type="reset" class="button-reset">다시작성</button>
								<button type="submit" class="button-edit button-bg-orange">수정완료</button>
							</div>
						</fieldset>
					</article>
				</form>
			</div>
		</section>
	</div><!-- // section-wrap -->
	<div id="footer-wrap">
	<footer class="inner">Copyright &copy; 2021 moment</footer>
</div><!-- // footer-wrap -->
</div>
</body>
</html>