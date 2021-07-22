package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.bookmarkVO;
import kr.co.vo.postVO;

@Repository
public class postDAOImpl implements postDAO {

	@Inject
	private SqlSession sqlSession;
	
	//게시물 작성하기
	@Override
	public void postWritePro(postVO vo) {
		sqlSession.insert("postMapper.postWritePro", vo);
	}
	
	//북마크 추가하기
	@Override
	public void insertBookmark(bookmarkVO vo) {
		sqlSession.insert("postMapper.insertBookmark", vo);
	}
	
	//북마크 삭제하기
	@Override
	public void deleteBookmark(bookmarkVO vo) {
		sqlSession.delete("postMapper.deleteBookmark", vo);
	}
	
	//북마크 체크여부 확인
	@Override
	public bookmarkVO checkBookmark(bookmarkVO vo) {
		
		return (bookmarkVO) sqlSession.selectList("postMapper.checkBookmark", vo);
	}
	
	//북마크 목록 조회
	@Override
	public List<bookmarkVO> bookmarkList(bookmarkVO vo){
		return sqlSession.selectList("postMapper.checkBookmark", vo);
	}
	
	//북마크된 게시물 출력
	@Override
	public postVO selectPost(bookmarkVO vo) {
		return (postVO) sqlSession.selectList("postMapper.selectPost", vo);
	}
}
