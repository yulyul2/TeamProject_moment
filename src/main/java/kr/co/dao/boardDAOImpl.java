package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.boardVO;

@Repository
public class boardDAOImpl implements boardDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void writePro(boardVO vo) {
		sqlSession.insert("boardMapper.writePro", vo);
	}
}
