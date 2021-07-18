package kr.co.dao;

import kr.co.vo.memberVO;

public interface MemberDAO {
	
	//회원가입
	public void joinMember(memberVO membervo) throws Exception ;
	
	//로그인
	public memberVO loginPro(memberVO membervo);
	
	//ID찾기
	public memberVO searchId(memberVO membervo);
	
	//PW찾기
	public memberVO searchPw(memberVO membervo);
	
	// 회원정보 수정
	public void memberUpdate(memberVO membervo)throws Exception;
	
	// 회원 탈퇴
	public void memberDelete(memberVO vo)throws Exception;
}//
