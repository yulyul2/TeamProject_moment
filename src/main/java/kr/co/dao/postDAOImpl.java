package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.postVO;

@Repository
public class postDAOImpl implements postDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void postWritePro(postVO vo) {
		sqlSession.insert("postMapper.writePro", vo);
	}
}
