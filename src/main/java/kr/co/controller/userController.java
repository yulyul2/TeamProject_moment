package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.userService;
import kr.co.vo.userVO;

@Controller
@RequestMapping("/user")
public class userController {
	private static final Logger logger = LoggerFactory.getLogger(postController.class);	
	
	@Inject
	userService service;
	
	//로그인 페이지 불러오기
	@GetMapping("/login")
	public String getlogin() {
	   return "user/login";
    }
	
	@PostMapping("/loginPro")							//@RequestParam 은 login.jsp 에서 member_pw값을 가져옴.
	public String postlogin(userVO uservo, HttpServletRequest req,@RequestParam("member_pw") String member_pw) {
		userVO vo = service.loginPro(uservo);
		
		String id = vo.getmember_id();
		String pw = vo.getmember_pw();
		
		HttpSession session = req.getSession();
		
		try {
		if(vo.getmember_id() != null ) {
			if(vo.getmember_pw().equals(member_pw)) {
				//세션으로 ID,PW 저장.
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				return ("post/"+ "main");
			}else {
				return "user/login_pw_fail";
			}
		}else {
			return "user/login_id_fail";
		}
		}catch(NullPointerException e){
			return "user/login";
		}
	//&& vo.getmember_pw() == null
	}
	
	//회원가입 페이지 불러오기
	@GetMapping("/join")
	public String getjoinuser() {
		logger.info("get userJoin");
		return "user/join";
	}
	
	//회원가입 post
	@PostMapping("/join")
	public String joinMember(userVO uservo, RedirectAttributes rttr) throws Exception {
		logger.info("post userJoin");
		service.userJoin(uservo);
		return "user/login";
	}
	
	//ID,PW페이지 가져오기
	@GetMapping("/searchIdPw")
	public String getsearchIdPw1() {
		return "/user/accountFind";
	}
	
	//ID찾기
	@PostMapping("/searchId")
	public String searchId(userVO mvo, RedirectAttributes reat) {
		userVO mVO = service.searchId(mvo);
		if(mVO != null) {
			reat.addFlashAttribute("Id",mVO.getmember_id());
		}
		return "redirect:/user/searchIdPw";
	}
		
	//PW찾기
	@PostMapping("/searchPw")
	public String searchPw(userVO mmvo, RedirectAttributes reat) {
		userVO mmVO = service.searchPw(mmvo);
		if(mmVO != null) {
			reat.addFlashAttribute("Pw",mmVO.getmember_pw());
		}
		return "redirect:/user/searchIdPw";
	}
}
