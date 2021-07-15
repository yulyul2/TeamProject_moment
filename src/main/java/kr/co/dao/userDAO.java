package kr.co.dao;

import kr.co.vo.userVO;

public interface userDAO {
	
	//회원가입
	public void userJoin(userVO membervo) throws Exception ;
	
	//로그인
	public userVO loginPro(userVO membervo);
	
	//ID찾기
	public userVO searchId(userVO membervo);
	
	//PW찾기
	public userVO searchPw(userVO membervo);
	
	
	
}//
