package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.memberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	//�쉶�썝媛��엯
	@Override
	public void joinMember(memberVO membervo) throws Exception {
		sqlSession.insert("memberMapper.joinMember", membervo);
	}
	
	@Override
	public memberVO loginPro(memberVO membervo) {
		
		return sqlSession.selectOne("memberMapper.loginPro",membervo);
	}
	//login(MemberVO membervo)�뿉 �뙆�씪誘명꽣 媛믪씠 �쟾�떖�릺怨�
	//memberMapper.xml�뿉�꽌 議고쉶�븳 �뜲�씠�꽣�뱾�씠 MemberVO�뿉 �떞源�.
	
	//ID찾기
	@Override
	public memberVO searchId(memberVO membervo) {
		
		return sqlSession.selectOne("memberMapper.searchId", membervo);
	}
	
	//PW찾기
	@Override
	public memberVO searchPw(memberVO membervo) {
		
		return sqlSession.selectOne("memberMapper.searchPw", membervo);
	}
	
	
	@Override
	public void memberUpdate(memberVO vo) throws Exception {
		// vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에 
		// 아이디가 memberUpdate인 쿼리에 파라미터들을 넣어줍니다.
		sqlSession.update("memberMapper.memberUpdate", vo); 
		
	}
	@Override
	public void memberDelete(memberVO vo) throws Exception {
		// MemberVO에 담긴 값들을 보내줍니다.
		// 그럼 xml에서 memberMapper.memberDelete에 보시면
		//  #{userId}, #{userPass}에 파라미터값이 매칭이 되겠지요.
		sqlSession.delete("memberMapper.memberDelete", vo);
		
	}
}
	
	
