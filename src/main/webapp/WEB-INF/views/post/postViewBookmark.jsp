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
	<title>북마크 게시물 상세보기</title>
	<!-- css, javascript
	* 북마크 게시물 상세보기 : post.css, post.js
	-->
	<link rel="stylesheet" type="text/css" href="<%= uiPath%>/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath%>/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath%>/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath%>/css/post.css" media="all" />
	<script type="text/javascript" src="<%= uiPath%>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%= uiPath%>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%= uiPath%>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="<%= uiPath%>/js/common.js"></script>
	<script type="text/javascript" src="<%= uiPath%>/js/post.js"></script>
</head>
<body>
<!-- 이미지 리사이징 처리
	* logo 이미지 제외 
	* 모든 이미지의 부모에는 class 'image-parent' 추가
	* 모든 이미지 자신에게는 class 'image-load' 추가 
-->
<!-- 팝업
	* 호출할 팝업 id 값과 click 되는 버튼 data-name 값을 동일하게 줌 
-->
<div id="wrap">
	<div id="header-wrap">
	<header class="inner clearfix">
		<h1 class="logo">
			<!-- [Dev] 페이지 연결 : 메인 -->
			<a href="javascript:void(0)"><img src="<%= uiPath%>/img/logo.png" alt="moment"></a>
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
										<img src="<%= uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">Lee_sy</span>
								</a>
								<!-- [Dev] 팔로우 기능 구현 -->
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">kim_hw</span>
								</a>
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load">
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
							<img src="<%= uiPath%>/img/profile/default.png" alt="프로필 이미지" class="image-load default">
						</span>
					</div>
					<div class="info-area">
						<p class="my-id"><%=id %></p>
						<p class="my-name">장유리</p>
					</div>
				</a>
				<!-- [Dev] 친구 게시물일 경우 노출되는 버튼 : 팔로우 기능 구현 (팔로우 버튼 누르면 "팔로우" -> "팔로잉" 으로 텍스트 변경) -->
				<button type="button" class="button-follow"><span>팔로우</span></button>
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
					<li class="tab-post"><a href="postViewList">게시물</a></li>
					<li class="tab-bookmark on">북마크</li>
				</ul>
				<!-- [Dev] 북마크 게시물 : 최신 북마크한 게시물부터 한 페이지당 10개씩 노출 -->
				<article class="bookmark-list">
					<h2 class="blind">북마크 게시물</h2>
					<ul class="list">
						<li class="image-parent">
							<!-- [Dev] 클릭 시 북마크된 게시물의 회원 페이지로 연결 -->
							<a href="javascript:void(0)">
								<img src="<%= uiPath%>/img/photo/sample_b_11.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
									<!-- [Dev] 게시물의 회원 아이디 가져옴 -->
										<div class="icon sp-button"><span class="blind">아이콘</span></div>
										<div class="text-box">
											<span class="id">kim_hw</span>님의 게시물<br>
											<span class="bold">바로가기</span>
										</div>
									</div>
								</div>
							</a>
						</li>
						<li class="image-parent">
							<a href="javascript:void(0)">
								<img src="<%= uiPath%>/img/photo/sample_b_12.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="icon sp-button"><span class="blind">아이콘</span></div>
										<div class="text-box">
											<span class="id">Lee_sy</span>님의 게시물<br>
											<span class="bold">바로가기</span>
										</div>
									</div>
								</div>
							</a>
						</li>
						<li class="image-parent">
							<a href="javascript:void(0)">
								<img src="<%= uiPath%>/img/photo/sample_b_13.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="icon sp-button"><span class="blind">아이콘</span></div>
										<div class="text-box">
											<span class="id">Park_hg</span>님의 게시물<br>
											<span class="bold">바로가기</span>
										</div>
									</div>
								</div>
							</a>
						</li>
						<li class="image-parent">
							<a href="javascript:void(0)">
								<img src="<%= uiPath%>/img/photo/sample_b_14.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="icon sp-button"><span class="blind">아이콘</span></div>
										<div class="text-box">
											<span class="id">Jang_yr</span>님의 게시물<br>
											<span class="bold">바로가기</span>
										</div>
									</div>
								</div>
							</a>
						</li>
					</ul>
					<!-- [Dev] 게시물 10개 이상일 경우 페이징 처리 -->
					<div class="pagination">
						<div class="paging clearfix">
							<button type="button" class="button-paging-prev sp-button"><span class="blind">이전 페이지</span></button>
							<ul class="page-list">
								<!-- [Dev] 현재 페이지에 class 'on' 추가 -->
								<li class="on"><a href="javascript:void(0)">1</a></li>
								<li><a href="javascript:void(0)">2</a></li>
								<li><a href="javascript:void(0)">3</a></li>
								<li><a href="javascript:void(0)">4</a></li>
								<li><a href="javascript:void(0)">5</a></li>
							</ul>
							<button type="button" class="button-paging-next sp-button"><span class="blind">다음 페이지</span></button>
						</div>
					</div>
				</article>
			</div>
		</section>
	</div><!-- // section-wrap -->
	<div id="footer-wrap">
	<footer class="inner">Copyright &copy; 2021 moment</footer>
</div><!-- // footer-wrap -->
</div>
</body>
</html>