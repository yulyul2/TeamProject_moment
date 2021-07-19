package kr.co.service;

import kr.co.vo.userVO;

public interface userService {
	
	//회원가입
	public void userJoin(userVO uservo) throws Exception;
	
	//로그인
	public userVO loginPro(userVO uservo);
	
	//ID찾기
	public userVO searchId(userVO uservo);
	
	//PW찾기
	public userVO searchPw(userVO uservo);
	
	//회원정보수정
	public void userUpdate(userVO vo) throws Exception;
	
	//회원탈퇴
	public void userDelete(userVO vo) throws Exception;
	
	//회원정보 불러오기
	public userVO userInfo(userVO vo) throws Exception;
}
