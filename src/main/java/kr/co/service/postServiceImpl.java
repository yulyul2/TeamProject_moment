package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.postDAO;
import kr.co.vo.bookmarkVO;
import kr.co.vo.postVO;

@Service
public class postServiceImpl implements postService {
	
	@Inject
	private postDAO dao;
	
	//게시물 작성하기
	@Override
	public void postWritePro(postVO vo) {
		dao.postWritePro(vo);
	}
	
	//북마크 추가하기
	@Override
	public void insertBookmark(bookmarkVO vo) {
		dao.insertBookmark(vo);
	}
	
	//북마크 삭제하기
	@Override
	public void deleteBookmark(bookmarkVO vo) {
		dao.deleteBookmark(vo);
	}
	
	//북마크 체크여부 확인
	@Override
	public bookmarkVO checkBookmark(bookmarkVO vo) {
		return dao.checkBookmark(vo);
	}
	
	@Override
	public List<bookmarkVO> bookmarkList(bookmarkVO vo){
		return dao.bookmarkList(vo);
	}
}
