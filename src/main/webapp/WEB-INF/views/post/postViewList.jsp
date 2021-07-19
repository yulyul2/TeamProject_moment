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
	<title>게시물 상세보기</title>
	<!-- css, javascript
	* 게시물 상세보기 : post.css, post.js
	-->
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/post.css" media="all" />
	<script type="text/javascript" src="<%= uiPath %>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/common.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/post.js"></script>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");

%>
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
			<a href="/post/main"><img src="<%= uiPath %>/img/logo.png" alt="moment"></a>
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
										<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">Lee_sy</span>
								</a>
								<!-- [Dev] 팔로우 기능 구현 -->
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
									</span>
									<span class="profile-id">kim_hw</span>
								</a>
								<button type="button" class="button-follow">팔로우</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
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
							<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load default">
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
					<!-- li : class 'on' 추가/제거 / 북마크로 링크 연결 -->
					<li class="tab-post on">게시물</li>
					<li class="tab-bookmark"><a href="/post/postViewBookmark">북마크</a></li>
				</ul>
				<!-- [Dev] 게시물 : 최신 등록한 게시물부터 한 페이지당 10개씩 노출 -->
				<article class="post-list">
					<h2 class="blind">게시물 리스트</h2>
					<ul class="list">
						<li class="image-parent">
							<!-- [Dev] 클릭 시 게시물 상세 팝업 -->
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_01.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
									<!-- [Dev] 좋아요, 댓글 개수 가져옴 -->
										<div class="like">
											<span class="count sp-button">87</span>
										</div>
										<div class="comment">
											<span class="count sp-button">2</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_02.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">888</span>
										</div>
										<div class="comment">
											<span class="count sp-button">25</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_03.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">71</span>
										</div>
										<div class="comment">
											<span class="count sp-button">53</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_04.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">449</span>
										</div>
										<div class="comment">
											<span class="count sp-button">27</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_05.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">72</span>
										</div>
										<div class="comment">
											<span class="count sp-button">3</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_06.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">0</span>
										</div>
										<div class="comment">
											<span class="count sp-button">0</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_07.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">645</span>
										</div>
										<div class="comment">
											<span class="count sp-button">33</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_08.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">77</span>
										</div>
										<div class="comment">
											<span class="count sp-button">28</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_09.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">335</span>
										</div>
										<div class="comment">
											<span class="count sp-button">72</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_10.jpg" alt="게시물 썸네일" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">65</span>
										</div>
										<div class="comment">
											<span class="count sp-button">8</span>
										</div>
									</div>
								</div>
							</button>
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
<!-- 팝업 - 메인 navi 1. 즐겨찾는 친구 : 전체 친구 목록 중 즐겨찾는 친구를 상위에 노출 -->
<div class="comm-popup" id="popup-naviBookmark">
	<div class="popup-inner">
		<button type="button" class="sp-button button-comm-popup-close"><span class="blind">즐겨찾는 친구 팝업 닫기</span></button>
		<h3>친구목록 전체 보기</h3>
		<ul class="list-inner comm-list">
			<li>
				<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] 즐겨찾기 기능 구현 -->
				<button type="button" class="button-bookmark sp-button button-toggle on"><span class="blind">즐겨찾기</span></button>
			</li> 
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
		</ul>
	</div>
</div>

<!-- 팝업 - 메인 navi 2. 추천친구 목록 : 추천친구 랜덤으로 20명 노출 -->
<div class="comm-popup" id="popup-naviRecommend">
	<div class="popup-inner">
		<button type="button" class="sp-button button-comm-popup-close"><span class="blind">추천친구 목록 팝업 닫기</span></button>
		<h3>추천친구 전체 보기</h3>
		<ul class="list-inner comm-list">
			<li>
				<!-- [Dev] 페이지 연결 : 회원 상세 보기 -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] 팔로우 기능 구현 -->
				<button type="button" class="button-follow">팔로우</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
				<button type="button" class="button-follow">팔로우</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-follow">팔로우</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-follow">팔로우</button>
			</li>
		</ul>
	</div>
</div>

<!-- 팝업 - 메인 navi 3. 공지사항 : 공지사항에 등록된 전체 목록을 최신순으로 노출 -->
<div class="comm-popup" id="popup-naviNotice">
	<div class="popup-inner">
		<button type="button" class="sp-button button-comm-popup-close"><span class="blind">공지사항 팝업 닫기</span></button>
		<h3 class="bg-none">공지사항 전체 보기</h3>
		<div class="content-inner comm-toggle-wrap">
			<dl class="toggle-area">
				<dt class="button-comm-toggle">
					<span class="title">금일 사이트 점검 예정</span><span class="date">2021.07.07</span>
				</dt>
				<dd class="toggle-content">
					금일 14:00 - 17:00 까지 3시간 사이트 점검 예정입니다.<br>
					사이트 이용에 참고 부탁드립니다.
				</dd>
			</dl>
			<dl class="toggle-area">
				<dt class="button-comm-toggle">
					<span class="title">게시물 등록 정책 변경 안내드립니다.</span><span class="date">2021.07.03</span>
				</dt>
				<dd class="toggle-content">
					내용입니다.
				</dd>
			</dl>
			<dl class="toggle-area">
				<dt class="button-comm-toggle">
					<span class="title">IE 브라우저 지원이 종료됩니다.</span><span class="date">2021.06.09</span>
				</dt>
				<dd class="toggle-content">
					내용입니다.
				</dd>
			</dl>
		</div>
		<!-- [Dev] 공지사항 게시글 3개 이상일 경우 페이징 처리 -->
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
	</div>
</div>

<!-- 팝업 - 게시물 상세 : 리스트에서 클릭한 게시물의 정보를 보여줌 -->
<div class="comm-popup" id="popup-postView">
	<div class="popup-inner">
		<button type="button" class="button-comm-popup-close"><span class="blind">게시물 상세 팝업 닫기</span></button>
		<h3 class="blind">게시물 상세</h3>
		<div class="post-wrap comm-post parent-toggle">
			<div class="head-area clearfix">
				<div class="profile">
					<!-- [Dev] Default 프로필 이미지 경로 : ./img/profile/default.png (다른 이미지는 jpg) -->
					<span class="profile-img image-parent"><img src="<%= uiPath %>/img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
					<span class="profile-id">yulyul2</span>
				</div>
				<div class="button">
					<!-- [Dev] 게시물 즐겨찾기 기능 구현 : 회원 상세 페이지에서 노출 -->
					<button type="button" class="button-bookmark sp-button button-toggle on"><span class="blind">즐겨찾기</span></button>
					<!-- [Dev] 레이어 호출 : 게시물 메뉴 -->
					<button type="button" class="button-menu sp-button button-parent-toggle"><span class="blind">게시물 메뉴</span></button>
				</div>
				<!-- 레이어 : 게시물 메뉴 1 -->
				<div class="layer-menu comm-layer simple">
					<h3 class="blind">게시물 메뉴 레이어</h3>
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
				<img src="<%= uiPath %>/img/photo/sample_b_01.jpg" alt="게시물 이미지" class="image-load">
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
					<!-- [Dev] 댓글 전체 보여주기 -->
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
	</div>
</div></body>
</html>