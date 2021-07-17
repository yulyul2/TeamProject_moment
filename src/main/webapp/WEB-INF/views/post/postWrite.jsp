<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uiPath = "http://yul2study.dothome.co.kr";
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시물 작성하기</title>
	<!-- css, javascript
	* 게시물 작성하기 : post.css, post.js
	-->
	<link rel="stylesheet" type="text/css" href="<%=uiPath %>/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=uiPath %>/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=uiPath %>/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=uiPath %>/css/post.css" media="all" />
	<script type="text/javascript" src="<%=uiPath %>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%=uiPath %>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%=uiPath %>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="<%=uiPath %>/js/common.js"></script>
	<script type="text/javascript" src="<%=uiPath %>/js/post.js"></script>
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
			<!-- [Dev] 페이지 연결 : 메인 -->
			<a href="javascript:void(0)"><img src="<%=uiPath%>/img/logo.png" alt="moment"></a>
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
										<img src="<%=uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">Lee_sy</span>
								</a>
								<!-- [Dev] 팔로우 기능 구현 -->
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%=uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">kim_hw</span>
								</a>
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%=uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load">
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
	<div id="section-wrap" class="bg-fafafa">
		<section class="inner post-section">
			<h2>게시물 작성하기</h2>
			<article>
				<form action="/post/postWritePro" method="post" name="postWriteFormCheck">
					<fieldset>
						<legend class="blind">게시물 작성</legend>
						<input type="hidden" value="<%=id %>" name="post_id">
						<textarea name="post_content" maxlength="70" placeholder="내용 작성하기"></textarea>
						<div class="photo-wrap">
							<div class="photo table-parent image-parent">
								<!-- [Dev] button-add : 사진 등록 후에 삭제 -->
								<div class="button-add table-child">
									<label for="photoUpload" class="photo-upload">
										<span class="icon sp-button"><span class="blind">사진추가</span></span>
										<span class="text">사진추가1</span>
									</label>
									<input type="file" name="post_photo2" id="post_photo2" style="display:none"/>
								</div>
							</div>
							<!-- [Dev] button-delete, img : 사진 등록 후에 노출
							<button type="button" class="button-delete sp-button"><span class="blind">사진삭제</span></button>
							<img src="<%=uiPath%>/img/photo/sample_b_12.jpg" alt="게시물 이미지" class="image-load">
							-->
						</div>
						<div class="button-area">
							<button type="submit" class="button-write">작성완료</button>
						</div>
					</fieldset>
				</form>
			</article>
		</section>
	</div><!-- // section-wrap -->
	<div id="footer-wrap">
	<footer class="inner">Copyright &copy; 2021 moment</footer>
</div><!-- // footer-wrap -->
</div>
</body>
</html>