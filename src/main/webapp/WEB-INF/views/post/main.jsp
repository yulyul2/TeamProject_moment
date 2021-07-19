<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.vo.userVO" %>

<%
	userVO currentSession = (userVO) session.getAttribute("loginUser");

	String id = currentSession.getmember_id();
	
	//세션 정보가 없으면 로그인 페이지로 리다이렉트
	if(currentSession == null)
		response.sendRedirect("login");
%>
<!DOCTYPE html>
<html >
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>메인</title>
	<!-- css, javascript
	* 메인 : main.css, main.js
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" media="all" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</head>
<body>
<!-- 이미지 리사이징 처리
 * logo 이미지 제외 
 * 모든 이미지의 부모에는 class 'image-parent' 추가
 * 모든 이미지 자신에게는 class 'image-load' 추가 
-->
<!-- 레이어 팝업
 * 호출할 레이어 팝업 id 값과 click 되는 버튼 data-name 값을 동일하게 줌 
-->
<div id="wrap">
    <div id="header-wrap">
        <header class="inner clearfix">
			<h1 class="logo">
				<!-- [Dev] 페이지 연결 : 메인 -->
				<a href="javascript:void(0)"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="moment"></a>
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
        </header>
    </div><!-- // header-wrap -->
	<div id="section-wrap" class="inner clearfix">
		<section class="side-section clearfix full-height">
			<article class="profile">
				<h2 class="blind">프로필</h2>
				<div class="image-area">
					<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
					<a href="javascript:void(0)">
						<span class="image image-parent">
							<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) 
								기본 이미지일 경우 class 'default' 추가 / 그 외엔 제거
							-->
							<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load default">
						</span>
					</a>
				</div>
				<div class="info-area">
					<p class="my-id"><a href="/post/postViewList/"><%=id %></a></p>
					<p class="my-name">장유리</p>
				</div>
				<!-- [Dev] 페이지 연결 : 게시물 작성 -->
				<a href="/post/postWrite" class="button-post-write"><span class="sp-button">게시물 작성</span></a>
			</article>
			<article class="navigation">
				<!-- navi 1. 즐겨찾는 친구 -->
				<div class="navi-area">
					<div class="navi-area-inner">
						<h2 class="blind">즐겨찾는 친구</h2>
						<button type="button" class="navi-title"><span class="sp-button">즐겨찾는 친구</span></button>
						<div class="navi-list">
							<ul class="list-inner comm-list">
								<li>
									<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Jang_yr</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">kim_hw</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Park_hg</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Lee_sy</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">bubblyJang</span>
									</a>
								</li>
							</ul>
							<!-- [Dev] 레이어 호출 : 친구 전체 목록 -->
							<button type="button" class="list-more comm-list-btn comm-layerpop-open" data-name="layerpop-navi-bookmark"><span>친구목록 전체 보기 +</span></button>
						</div>
					</div>
				</div>
				<!-- navi 2. 추천친구 목록 -->
				<div class="navi-area">
					<div class="navi-area-inner">
						<h2 class="blind">추천친구 목록</h2>
						<button type="button" class="navi-title"><span class="sp-button">추천친구 목록</span></button>
						<div class="navi-list">
							<ul class="list-inner comm-list">
								<li>
									<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Jang_yr</span>
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
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Lee_sy</span>
									</a>
									<button type="button" class="button-follow">팔로우</button>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">bubblyJang</span>
									</a>
									<button type="button" class="button-follow">팔로우</button>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Jang_yr</span>
									</a>
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
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">Lee_sy</span>
									</a>
									<button type="button" class="button-follow">팔로우</button>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="profile-img image-parent">
											<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
										</span>
										<span class="profile-id">bubblyJang</span>
									</a>
									<button type="button" class="button-follow">팔로우</button>
								</li>
							</ul>
							<!-- [Dev] 레이어 호출 : 추천 친구 목록 -->
							<button type="button" class="list-more comm-list-btn comm-layerpop-open" data-name="layerpop-navi-recommend"><span>추천친구 더 보기 +</span></button>
						</div>
					</div>
				</div>
				<!-- navi 3. 공지사항 -->
				<div class="navi-area">
					<div class="navi-area-inner">
						<h2 class="blind">공지사항</h2>
						<button type="button" class="navi-title"><span class="sp-button">공지사항</span></button>
						<div class="navi-list">
							<ul class="list-inner comm-list">
								<li>
									<!-- [Dev] 레이어 호출 : 공지사항 -->
									<a href="javascript:void(0)">
										<span class="title">금일 사이트 점검 예정</span>
										<span class="date">2021.06.30</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="title">게시물 등록 정책 변경 안내드립니다.</span>
										<span class="date">2021.06.09</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="title">IE 브라우저 지원이 종료됩니다.</span>
										<span class="date">2021.05.14</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="title">봄맞이 벚꽃 이벤트 참여하세요~</span>
										<span class="date">2021.04.15</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)">
										<span class="title">사이트 정기 정검이 예정되어 있습니다.</span>
										<span class="date">2021.03.01</span>
									</a>
								</li>
							</ul>
							<!-- [Dev] 레이어 호출 : 공지사항 전체 목록 -->
							<button type="button" class="list-more comm-list-btn comm-layerpop-open" data-name="layerpop-navi-notice"><span>공지사항 더 보기 +</span></button>
						</div>
					</div>
				</div>
			</article>
		</section>
		<!-- [Dev] 추천 게시물 : 5개 랜덤 노출 -->
		<section class="main-section clearfix">
			<article class="recommend-post">
				<h2>추천 게시물</h2>
				<div class="slider-wrap">
					<ul class="slider">
						<li>
							<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
							<a href="javascript:void(0)">
								<div class="thumbnail image-parent">
									<!-- [Dev] 게시물 사진 경로 : ./img/photo/sample_s_01.jpg -->
									<img src="${pageContext.request.contextPath}/resources/img/photo/sample_s_01.jpg" alt="게시물 썸네일" class="image-load">
								</div>
								<div class="profile">
									<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) -->
									<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
									<span class="profile-id">yulyul2</span>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)">
								<div class="thumbnail image-parent image-parent">
									<img src="${pageContext.request.contextPath}/resources/img/photo/sample_s_02.jpg" alt="게시물 썸네일" class="image-load">
								</div>
								<div class="profile">
									<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
									<span class="profile-id">Park_hg</span>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)">
								<div class="thumbnail image-parent">
									<img src="${pageContext.request.contextPath}/resources/img/photo/sample_s_03.jpg" alt="게시물 썸네일" class="image-load">
								</div>
								<div class="profile">
									<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
									<span class="profile-id">kim_hw</span>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)">
								<div class="thumbnail image-parent">
									<img src="${pageContext.request.contextPath}/resources/img/photo/sample_s_04.jpg" alt="게시물 썸네일" class="image-load">
								</div>
								<div class="profile">
									<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
									<span class="profile-id">Lee_sy</span>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)">
								<div class="thumbnail image-parent">
									<img src="${pageContext.request.contextPath}/resources/img/photo/sample01.jpg" alt="게시물 썸네일" class="image-load">
								</div>
								<div class="profile">
									<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
									<span class="profile-id">bubblyJang</span>
								</div>
							</a>
						</li>
					</ul>
					<div class="button-prev sp-button"><span class="blind">이전</span></div>
					<div class="button-next sp-button"><span class="blind">다음</span></div>
				</div>
			</article>
			<!-- [Dev] 메인 게시물 : 5개씩 노출, 그 이상부터 페이징 처리 -->
			<article class="main-post">
				<h2 class="blind">최신 게시물</h2>
				<!-- 게시물 1 -->
				<div class="post-wrap comm-post">
					<div class="head-area clearfix has-comm-layer">
						<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
						<a href="javascript:void(0)" class="profile">
							<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) -->
							<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
							<span class="profile-id">yulyul2</span>
						</a>
						<div class="button">
							<!-- [Dev] 게시물 즐겨찾기 기능 구현 : 회원 상세 페이지에서 노출 -->
							<button type="button" class="button-bookmark sp-button button-toggle on"><span class="blind">즐겨찾기</span></button>
							<!-- [Dev] 레이어 호출 : 게시물 메뉴 -->
							<button type="button" class="button-menu sp-button button-comm-layer-open"><span class="blind">게시물 메뉴</span></button>
						</div>
						<!-- 레이어 : 게시물 메뉴 1 -->
						<div class="layer-menu comm-layer">
							<h3 class="blind">게시물 메뉴 레이어</h3>
							<button type="button" class="button-menu-close sp-button button-comm-layer-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
							<div class="layer-inner">
								<ul class="list">
									<!-- [Dev] 페이지 연결 : 게시물 수정 (본인 or 관리자 계정에서만 노출) -->
									<li><a href="javascript:void(0)" class="button-edit">수정하기</a></li>
									<!-- [Dev] 게시물 삭제 기능 구현 (본인 or 관리자 계정에서만 노출) -->
									<li><button type="button" class="button-delete">삭제하기</button></li>
									<!-- [Dev] 게시물 공유 기능 구현 -->
									<li><button type="button" class="button-share">공유하기</button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="photo-area image-parent">
						<!-- [Dev] 게시물 사진 경로 : ./img/photo/sample_s_01.jpg -->
						<img src="${pageContext.request.contextPath}/resources/img/photo/sample01.jpg" alt="게시물 이미지" class="image-load">
					</div>
					<div class="info-area">
						<div class="post-info">
							<!-- [Dev] 좋아요 기능 구현, 개수 카운트 -->
							<button type="button" class="button-like button-toggle on">
								<span class="icon sp-button"><span class="blind">좋아요</span></span>
								<span class="text">좋아요 <span class="count">99</span>개</span>
							</button>
							<!-- [Dev] 댓글 개수 카운트 -->
							<button type="button" class="button-comment">
								<span class="icon sp-button"><span class="blind">댓글</span></span>
								<span class="text">댓글  <span class="count">8</span>개</span>
							</button>
						</div>
						<div class="post-content">
							<span class="id">yulyul2</span>
							<p class="content">여행 가고 싶은 날씨</p>
						</div>
						<div class="post-comment">
							<!-- [Dev] 댓글은 3개만 노출 후 댓글 모두보기 버튼 클릭 시 전체 보여주기 -->
							<button type="button" class="button-allcomment">댓글 모두보기</button>
							<ul class="comment-list short-bar">
								<li>
									<span class="id">bubblyJang</span>
									<span class="comment">여행 고고??</span>
								</li>
								<li>
									<span class="id">happyhappy</span>
									<span class="comment">오늘 날씨 좋아요~</span>
								</li>
								<li>
									<span class="id">hihi_o_o</span>
									<span class="comment">우왕</span>
								</li>
								<li>
									<span class="id">abc_jjj</span>
									<span class="comment">이제 진짜 여름이야 ㅠㅠ</span>
								</li>
								<li>
									<span class="id">qwer1234</span>
									<span class="comment">놀러갈까~~</span>
								</li>
								<li>
									<span class="id">pd_aaa</span>
									<span class="comment">더워더워</span>
								</li>
								<li>
									<span class="id">hello</span>
									<span class="comment">안녕안녕</span>
								</li>
								<li>
									<span class="id">Jang_yr</span>
									<span class="comment">진짜 놀러가고 싶다!!</span>
								</li>
							</ul>
							<div class="comment-write">
								<form action="javascript:void(0)" metohd="post" name="commentForm">
									<fieldset>
										<legend class="blind">댓글 작성</legend>
										<input type="text" placeholder="댓글 작성" class="input-comment">
										<button type="submit" class="button-comment sp-button"><span class="blind">댓글 작성하기</span></button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 게시물 2 -->
				<div class="post-wrap comm-post">
					<div class="head-area clearfix has-comm-layer">
						<a href="javascript:void(0)" class="profile">
							<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
							<span class="profile-id">kim_hw</span>
						</a>
						<div class="button">
							<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
							<button type="button" class="button-menu sp-button button-comm-layer-open"><span class="blind">게시물 메뉴</span></button>
						</div>
						<!-- 레이어 : 게시물 메뉴 2 -->
						<div class="layer-menu comm-layer">
							<h3 class="blind">게시물 메뉴 레이어</h3>
							<button type="button" class="button-menu-close sp-button button-comm-layer-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
							<div class="layer-inner">
								<ul class="list">
									<li><a href="javascript:void(0)" class="button-edit">수정하기</a></li>
									<li><button type="button" class="button-delete">삭제하기</button></li>
									<li><button type="button" class="button-share">공유하기</button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="photo-area image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/photo/sample02.jpg" alt="게시물 이미지" class="image-load">
					</div>
					<div class="info-area">
						<div class="post-info">
							<button type="button" class="button-like button-toggle">
								<span class="icon sp-button"><span class="blind">좋아요</span></span>
								<span class="text">좋아요 <span class="count">54</span>개</span>
							</button>
							<button type="button" class="button-comment">
								<span class="icon sp-button"><span class="blind">댓글</span></span>
								<span class="text">댓글  <span class="count">2</span>개</span>
							</button>
						</div>
						<div class="post-content">
							<span class="id">kim_hw</span>
							<p class="content">작년 이탈리아 여행</p>
						</div>
						<div class="post-comment">
							<button type="button" class="button-allcomment">댓글 모두보기</button>
							<ul class="comment-list short-bar">
								<li>
									<span class="id">Lee_sy</span>
									<span class="comment">사진 잘 찍었다 ㅎㅎ</span>
								</li>
								<li>
									<span class="id">Park_hg</span>
									<span class="comment">또 가고싶다~~~</span>
								</li>
							</ul>
							<div class="comment-write">
								<form action="javascript:void(0)" metohd="post" name="commentForm">
									<fieldset>
										<legend class="blind">댓글 작성</legend>
										<input type="text" placeholder="댓글 작성" class="input-comment">
										<button type="submit" class="button-comment sp-button"><span class="blind">댓글 작성하기</span></button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 게시물 3 -->
				<div class="post-wrap comm-post">
					<div class="head-area clearfix has-comm-layer">
						<a href="javascript:void(0)" class="profile">
							<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
							<span class="profile-id">Lee_sy</span>
						</a>
						<div class="button">
							<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
							<button type="button" class="button-menu sp-button button-comm-layer-open"><span class="blind">게시물 메뉴</span></button>
						</div>
						<!-- 레이어 : 게시물 메뉴 3 -->
						<div class="layer-menu comm-layer">
							<h3 class="blind">게시물 메뉴 레이어</h3>
							<button type="button" class="button-menu-close sp-button button-comm-layer-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
							<div class="layer-inner">
								<ul class="list">
									<li><a href="javascript:void(0)" class="button-edit">수정하기</a></li>
									<li><button type="button" class="button-delete">삭제하기</button></li>
									<li><button type="button" class="button-share">공유하기</button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="photo-area image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/photo/sample03.jpg" alt="게시물 이미지" class="image-load">
					</div>
					<div class="info-area">
						<div class="post-info">
							<button type="button" class="button-like button-toggle">
								<span class="icon sp-button"><span class="blind">좋아요</span></span>
								<span class="text">좋아요 <span class="count">64</span>개</span>
							</button>
							<button type="button" class="button-comment">
								<span class="icon sp-button"><span class="blind">댓글</span></span>
								<span class="text">댓글  <span class="count">3</span>개</span>
							</button>
						</div>
						<div class="post-content">
							<span class="id">Lee_sy</span>
							<p class="content">드디어 고단했던 작업의 끝이 보이기 시작한다.</p>
						</div>
						<div class="post-comment">
							<button type="button" class="button-allcomment">댓글 모두보기</button>
							<ul class="comment-list short-bar">
								<li>
									<span class="id">Park_hg</span>
									<span class="comment">오 고생했다</span>
								</li>
								<li>
									<span class="id">enjoy_moment</span>
									<span class="comment">이번 프로젝트 결과물 기대되네요 :)</span>
								</li>
								<li>
									<span class="id">yulyul2</span>
									<span class="comment">기대할게!</span>
								</li>
							</ul>
							<div class="comment-write">
								<form action="javascript:void(0)" metohd="post" name="commentForm">
									<fieldset>
										<legend class="blind">댓글 작성</legend>
										<input type="text" placeholder="댓글 작성" class="input-comment">
										<button type="submit" class="button-comment sp-button"><span class="blind">댓글 작성하기</span></button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 게시물 4 -->
				<div class="post-wrap comm-post">
					<div class="head-area clearfix has-comm-layer">
						<a href="javascript:void(0)" class="profile">
							<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
							<span class="profile-id">Park_hg</span>
						</a>
						<div class="button">
							<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
							<button type="button" class="button-menu sp-button button-comm-layer-open"><span class="blind">게시물 메뉴</span></button>
						</div>
						<!-- 레이어 : 게시물 메뉴 4 -->
						<div class="layer-menu comm-layer">
							<h3 class="blind">게시물 메뉴 레이어</h3>
							<button type="button" class="button-menu-close sp-button button-comm-layer-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
							<div class="layer-inner">
								<ul class="list">
									<li><a href="javascript:void(0)" class="button-edit">수정하기</a></li>
									<li><button type="button" class="button-delete">삭제하기</button></li>
									<li><button type="button" class="button-share">공유하기</button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="photo-area image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/photo/sample04.jpg" alt="게시물 이미지" class="image-load">
					</div>
					<div class="info-area">
						<div class="post-info">
							<button type="button" class="button-like button-toggle">
								<span class="icon sp-button"><span class="blind">좋아요</span></span>
								<span class="text">좋아요 <span class="count">49</span>개</span>
							</button>
							<button type="button" class="button-comment">
								<span class="icon sp-button"><span class="blind">댓글</span></span>
								<span class="text">댓글  <span class="count">2</span>개</span>
							</button>
						</div>
						<div class="post-content">
							<span class="id">Park_hg</span>
							<p class="content">더울 땐 역시 바다를 가야돼</p>
						</div>
						<div class="post-comment">
							<button type="button" class="button-allcomment">댓글 모두보기</button>
							<ul class="comment-list short-bar">
								<li>
									<span class="id">kim_hw</span>
									<span class="comment">잘 놀러다니는구만 ^_^</span>
								</li>
								<li>
									<span class="id">Lee_sy</span>
									<span class="comment">더울 땐 역시 집이 최고..</span>
								</li>
							</ul>
							<div class="comment-write">
								<form action="javascript:void(0)" metohd="post" name="commentForm">
									<fieldset>
										<legend class="blind">댓글 작성</legend>
										<input type="text" placeholder="댓글 작성" class="input-comment">
										<button type="submit" class="button-comment sp-button"><span class="blind">댓글 작성하기</span></button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 게시물 5 -->
				<div class="post-wrap comm-post">
					<div class="head-area clearfix has-comm-layer">
						<a href="javascript:void(0)" class="profile">
							<span class="profile-img image-parent"><img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
							<span class="profile-id">bubblyJang</span>
						</a>
						<div class="button">
							<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
							<button type="button" class="button-menu sp-button button-comm-layer-open"><span class="blind">게시물 메뉴</span></button>
						</div>
						<!-- 레이어 : 게시물 메뉴 5 -->
						<div class="layer-menu comm-layer">
							<h3 class="blind">게시물 메뉴 레이어</h3>
							<button type="button" class="button-menu-close sp-button button-comm-layer-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
							<div class="layer-inner">
								<ul class="list">
									<li><a href="javascript:void(0)" class="button-edit">수정하기</a></li>
									<li><button type="button" class="button-delete">삭제하기</button></li>
									<li><button type="button" class="button-share">공유하기</button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="photo-area image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/photo/sample05.jpg" alt="게시물 이미지" class="image-load">
					</div>
					<div class="info-area">
						<div class="post-info">
							<button type="button" class="button-like button-toggle">
								<span class="icon sp-button"><span class="blind">좋아요</span></span>
								<span class="text">좋아요 <span class="count">225</span>개</span>
							</button>
							<button type="button" class="button-comment">
								<span class="icon sp-button"><span class="blind">댓글</span></span>
								<span class="text">댓글  <span class="count">1</span>개</span>
							</button>
						</div>
						<div class="post-content">
							<span class="id">bubblyJang</span>
							<p class="content">오늘의 꽃</p>
						</div>
						<div class="post-comment">
							<button type="button" class="button-allcomment">댓글 모두보기</button>
							<ul class="comment-list short-bar">
								<li>
									<span class="id">yulyul2</span>
									<span class="comment">오늘도 잘 구경하고 갑니다~~</span>
								</li>
							</ul>
							<div class="comment-write">
								<form action="javascript:void(0)" metohd="post" name="commentForm">
									<fieldset>
										<legend class="blind">댓글 작성</legend>
										<input type="text" placeholder="댓글 작성" class="input-comment">
										<button type="submit" class="button-comment sp-button"><span class="blind">댓글 작성하기</span></button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- [Dev] 게시물 5개 이상일 경우 페이징 처리 -->
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
		</section>
	</div><!-- // section-wrap -->
    <div id="footer-wrap">
        <footer class="inner">Copyright &copy; 2021 moment</footer>
    </div><!-- // footer-wrap -->
</div>

<!-- 팝업 : navi 1. 즐겨찾는 친구 -->
<div class="comm-layerpop" id="layerpop-navi-bookmark">
	<div class="layer-inner">
		<button type="button" class="sp-button button-comm-layerpop-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
		<h3>즐겨찾는 친구</h3>
		<ul class="list-inner comm-list">
			<li>
				<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
			</li> 
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
			</li>
		</ul>
	</div>
</div>
<!-- 팝업 : navi 2. 추천친구 목록 -->
<div class="comm-layerpop" id="layerpop-navi-recommend">
	<div class="layer-inner">
		<button type="button" class="sp-button button-comm-layerpop-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
		<h3>추천친구 목록</h3>
		<ul class="list-inner comm-list">
			<li>
				<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
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
	</div>
</div>
<!-- 팝업 : navi 3. 공지사항 -->
<div class="comm-layerpop" id="layerpop-navi-notice">
	<div class="layer-inner">
		<button type="button" class="sp-button button-comm-layerpop-close"><span class="blind">게시물 메뉴 레이어 닫기</span></button>
		<h3>공지사항</h3>
		<ul class="list-inner comm-list">
			<li>
				<p class="title"></p>
			</li>
			<li>
				<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] 팔로우 기능 구현 -->
				<button type="button" class="button-follow">팔로우</button>
			</li>
		</ul>
	</div>
</div>

</body>
</html>