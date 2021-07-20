<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="kr.co.vo.userVO" %>
<%
	userVO currentSession = (userVO) session.getAttribute("loginUser");
	
	String id = currentSession.getmember_id();//세션으로 받은 id값
	
	String name = (String)request.getAttribute("name");
%>
<!-- 공통 : 사이드메뉴(게시물 상세보기, 회원정보 수정, 회원탈퇴) -->
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
				<p class="my-id"><%=id %></p>
				<p class="my-name"><%=name %></p>
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