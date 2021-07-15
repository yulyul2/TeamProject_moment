package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock.Catch;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.userService;
import kr.co.vo.userVO;

@Controller
//@RequestMapping("/user/*")
public class userController {
	
	private static final Logger logger = LoggerFactory.getLogger(postController.class);
	private String post = "redirect:/post/";
	
	
	@Inject
	userService service;
	
	//회원가입 페이지 불러오기
	@GetMapping(value = "/user/userJoin")
	public void getjoinuser() {
		logger.info("get userJoin");

	}
	
	//회원가입 post
	@PostMapping(value = "/user/userJoin")
	public String postjoinuser(userVO uservo, RedirectAttributes rttr) throws Exception {
		
		
		logger.info("post userJoin");
		
		service.userJoin(uservo);
		
		return "redirect:/user/login";
	}
	
	
	
	
	//ID,PW페이지 가져오기
	@RequestMapping(value="/user/searchIdPw", method=RequestMethod.GET)
	public void getsearchIdPw1() {
		
	}
	
	//ID찾기
	@PostMapping(value="/user/searchId")
	public String searchId(userVO mvo, RedirectAttributes reat) {
		
		userVO mVO = service.searchId(mvo);
		
			reat.addFlashAttribute("Id",mVO.getuser_id());
		
			return "redirect:/user/searchIdPw";
		
	}
	
		
	//PW찾기
	@PostMapping(value="/user/searchPw")
	public String searchPw(userVO mmvo, RedirectAttributes reat) {
		
		userVO mmVO = service.searchPw(mmvo);
		
			
			reat.addFlashAttribute("Pw",mmVO.getuser_pw());
		
		return "redirect:/user/searchIdPw";
	}
	
	
	
	//로그인 페이지 불러오기
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public void getlogin() {
		
	}
	
	@PostMapping(value="/user/loginPro")							//@RequestParam 은 login.jsp 에서 user_pw값을 가져옴.
	public String postlogin(userVO uservo, HttpServletRequest req,@RequestParam("user_pw") String user_pw) {
		userVO vo = service.loginPro(uservo);
		
		String id = vo.getuser_id();
		String pw = vo.getuser_pw();
		
		HttpSession session = req.getSession();
		
		
		try {
		if(vo.getuser_id() != null ) {
			if(vo.getuser_pw().equals(user_pw)) {
				//세션으로 ID,PW 저장.
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				return ("post/"+ "main");
			}else {
				return "/user/login_pw_fail";
			}
		}else {
			return "/user/login_id_fail";
		}
		}catch(NullPointerException e){
			return "/user/login";
		}
	
	//&& vo.getuser_pw() == null
	}
	
	
	
}
