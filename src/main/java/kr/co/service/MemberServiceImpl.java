package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.MemberDAO;
import kr.co.vo.memberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void joinMember(memberVO membervo) throws Exception {
		dao.joinMember(membervo);
		
	}
	
	@Override
	public memberVO loginPro(memberVO membervo) {
		return dao.loginPro(membervo);
	}//MemberDAO에서 MemberVO안에 조회된 값이 담김
	
	//ID찾기
	@Override
	public memberVO searchId(memberVO membervo) {
		return dao.searchId(membervo);
	}
	
	//PW찾기
	@Override
	public memberVO searchPw(memberVO membervo) {
		return dao.searchPw(membervo);
	}

	@Override
	public void memberUpdate(memberVO vo) throws Exception {
		
		//받은 vo를 DAO로 보내줍니다.
		dao.memberUpdate(vo);
		
		
	}
	
	@Override
	public void memberDelete(memberVO vo) throws Exception {
		dao.memberDelete(vo);
	}
}
