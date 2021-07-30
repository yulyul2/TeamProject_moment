package kr.co.service;

import java.util.List;

import kr.co.vo.bookmarkVO;
import kr.co.vo.postVO;

public interface postService {

	//게시물 작성하기
	public void postWritePro(postVO vo);
	
	//북마크 추가하기
	public void insertBookmark(bookmarkVO vo);
	
	//북마크 삭제하기
	public void deleteBookmark(bookmarkVO vo);
	
	//북마크 목록 조회
	public List<postVO> selectBookmark(bookmarkVO vo);
	
	//북마크 목록 조회
	public List<bookmarkVO> bookmarkList(bookmarkVO vo);
	
	//북마크한 게시물 출력
	public postVO selectPost(bookmarkVO vo);

}
