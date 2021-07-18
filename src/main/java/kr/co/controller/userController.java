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
import org.springframework.web.bind.annotation.RequestMethod;
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
		
		HttpSession session = req.getSession();
		
		try {
			if (vo != null) {
				String id = vo.getmember_id();
				String pw = vo.getmember_pw();

				if (pw.equals(member_pw)) {
					session.setAttribute("id", id);
					session.setAttribute("pw", pw);
					return ("post/main");
				} else {
					return "user/login_fail";
				}
			}else {
				return "user/login_fail";
			}
		} catch (NullPointerException e) {
			return "user/login";
		}
	}
	
	//회원가입 페이지 불러오기
	@GetMapping("/join")
	public String getjoin() {
		logger.info("get userJoin");
		return "user/join";
	}
	
	//회원가입 post
	@PostMapping("/join")
	public String postjoin(userVO uservo, RedirectAttributes rttr) throws Exception {
		logger.info("post userJoin");
		service.userJoin(uservo);
		return "user/login";
	}
	
	//ID,PW페이지 가져오기
	@GetMapping("/searchIdPw")
	public String getsearchIdPw() {
		return "user/searchIdPw";
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
	
	//회원정보수정 get
	@GetMapping("/myInfo")
	public String getuserUpdate() {
		logger.info("get userUpdate");
		return "user/myInfo";
	}
	
	//회원정보수정 post
	@PostMapping("/myInfo")
	public String postuserUpdate(HttpSession session, userVO vo) throws Exception {
		logger.info("post userUpdate");
	 
		service.userUpdate(vo);
		session.invalidate();
	 
		return "user/myInfo";
	}
	
	//회원탈퇴 get
	@GetMapping("/leave")
	public String getuserDelete() throws Exception{
		logger.info("get userDelete");
		return "user/leave";
	}
	
	//회원탈퇴 post
	@PostMapping("/leave")
	public String postuserDelete(userVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		logger.info("post userDelete");
		
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		userVO member = (userVO) session.getAttribute("member");
		// 세션에있는 비밀번호
		Class<? extends userVO> sessionPass = member.getClass();
		// vo로 들어오는 비밀번호
		Class<? extends userVO> voPass = vo.getClass();
		
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/leave";
		}
		service.userDelete(vo);
		session.invalidate();
		return "redirect:/";
	}
}
