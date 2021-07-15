package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.boardDAO;
import kr.co.vo.boardVO;

@Service
public class boardServiceImpl implements boardService {
	
	@Inject
	private boardDAO dao;
	
	@Override
	public void writePro(boardVO vo) {
		dao.writePro(vo);
	}
}
