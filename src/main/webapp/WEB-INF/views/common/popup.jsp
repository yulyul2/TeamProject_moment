<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 공통 : 팝업 -->
<!-- 팝업 : navi 1. 즐겨찾는 친구 -->
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
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] 즐겨찾기 기능 구현 -->
				<button type="button" class="button-bookmark sp-button button-toggle on"><span class="blind">즐겨찾기</span></button>
			</li> 
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">즐겨찾기</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
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
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] 팔로우 기능 구현 -->
				<button type="button" class="button-follow">팔로우</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
				<button type="button" class="button-follow">팔로우</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-follow">팔로우</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="./img/profile/default.png" alt="프로필 이미지" class="image-load">
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
					<span class="profile-img image-parent"><img src="./img/profile/default.png" alt="프로필 이미지" class="image-load"></span>
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
				<img src="./img/photo/sample_b_01.jpg" alt="게시물 이미지" class="image-load">
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
</div>