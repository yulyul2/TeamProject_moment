package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.userVO;

@Repository
public class userDAOImpl implements userDAO {
   
	@Inject
	private SqlSession sqlSession;
   
	//회원가입
	@Override
	public void userJoin(userVO uservo) throws Exception {
		sqlSession.insert("userMapper.userJoin", uservo);
	}
   
	@Override
	public userVO loginPro(userVO uservo) {
      
    	return sqlSession.selectOne("userMapper.loginPro",uservo);
	}
	//loginPro(userVO uservo)
	//userMapper.xml에서 loginPro 실행 userVO를 사용.

	//ID찾기
	@Override
	public userVO searchId(userVO uservo) {
	   
    	return sqlSession.selectOne("userMapper.searchId", uservo);
	}
   
	//PW찾기
	@Override
	public userVO searchPw(userVO uservo) {
      
    	return sqlSession.selectOne("userMapper.searchPw", uservo);
	}
   
	//회원정보수정
	@Override
	public void userUpdate(userVO vo) throws Exception {
		// vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에 
		// 아이디가 memberUpdate인 쿼리에 파라미터들을 넣어줍니다.
		sqlSession.update("memberMapper.memberUpdate", vo); 
	}
	
	//회원탈퇴
	@Override
	public void userDelete(userVO vo) throws Exception {
		// MemberVO에 담긴 값들을 보내줍니다.
		// 그럼 xml에서 memberMapper.memberDelete에 보시면
		//  #{userId}, #{userPass}에 파라미터값이 매칭이 되겠지요.
		sqlSession.delete("memberMapper.memberDelete", vo);
	}
}