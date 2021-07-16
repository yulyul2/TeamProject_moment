package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.postDAO;
import kr.co.vo.postVO;

@Service
public class postServiceImpl implements postService {
	
	@Inject
	private postDAO dao;
	
	@Override
	public void postWritePro(postVO vo) {
		dao.postWritePro(vo);
	}
}
