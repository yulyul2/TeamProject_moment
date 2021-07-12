package kr.co.controller;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.MemberService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	MemberService service;
	
	@RequestMapping("/main")
	public String main()throws Exception {
		return "board/main";
	}
	
	@RequestMapping("/home")
	public String home()throws Exception {
		return "board/home";
	}
	
	
	
}
