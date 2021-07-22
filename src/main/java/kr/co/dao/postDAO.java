package kr.co.dao;

import java.util.List;

import kr.co.vo.bookmarkVO;
import kr.co.vo.postVO;

public interface postDAO {

	//게시글 작성
	public void postWritePro(postVO vo);
	
	//북마크 추가하기
	public void insertBookmark(bookmarkVO vo);
	
	//북마크 삭제하기
	public void deleteBookmark(bookmarkVO vo);
	
	//북마크 체크여부 확인
	public bookmarkVO checkBookmark(bookmarkVO vo);
	
	//북마크 목록 조회
	public List<bookmarkVO> bookmarkList(bookmarkVO vo);
	
	//북마크된 게시물 출력
	public postVO selectPost(bookmarkVO vo);
}
