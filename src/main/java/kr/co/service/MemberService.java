package kr.co.service;

import kr.co.vo.memberVO;

public interface MemberService {
	
	//회원가입
	public void joinMember(memberVO membervo) throws Exception;
	
	//로그인
	public memberVO loginPro(memberVO membervo);
	
	//ID찾기
	public memberVO searchId(memberVO membervo);
	
	//PW찾기
	public memberVO searchPw(memberVO membervo);
	
	
}