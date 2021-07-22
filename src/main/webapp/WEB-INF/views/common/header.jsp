<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 공통 : 헤더 -->
<div id="header-wrap">
	<header class="inner clearfix">
		<h1 class="logo">
			<!-- [Dev] 페이지 연결 : 메인 -->
			<a href="${pageContext.request.contextPath}/post/main"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="moment"></a>
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
						<li><a href="javascript:void(0)">로그아웃</a></li>
						<li><a href="${pageContext.request.contextPath}/user/myInfo">개인정보</a></li>
						<!-- [Dev] 게시물 상세 페이지로 연결 -->
						<li><a href="${pageContext.request.contextPath}/post/postView">게시물 관리</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
</div>