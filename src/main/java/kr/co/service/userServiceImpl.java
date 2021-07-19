package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.userDAO;
import kr.co.vo.userVO;

@Service
public class userServiceImpl implements userService{
	
	@Inject
	private userDAO dao;
	
	//회원가입
	@Override
	public void userJoin(userVO uservo) throws Exception {
		dao.userJoin(uservo);
	}
	
	@Override
	public userVO loginPro(userVO uservo) {
		return dao.loginPro(uservo);
	}//MemberDAO에서 MemberVO안에 조회된 값이 담김
	
	//ID찾기
	@Override
	public userVO searchId(userVO uservo) {
		return dao.searchId(uservo);
	}
	
	//PW찾기
	@Override
	public userVO searchPw(userVO uservo) {
		return dao.searchPw(uservo);
	}
	
	//회원정보수정
	@Override
	public void userUpdate(userVO vo) throws Exception {
		//받은 vo를 DAO로 보내줍니다.
		dao.userUpdate(vo);
	}
	
	//회원탈퇴
	@Override
	public void userDelete(userVO vo) throws Exception {
		dao.userDelete(vo);
	}

	//회원정보 불러오기
	@Override
	public userVO userInfo(userVO vo) throws Exception {
		System.out.println(vo.getmember_id());
		return dao.userInfo(vo);
	}
}
