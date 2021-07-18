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
	
	
	
	
}
