package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.MemberService;
import kr.co.vo.memberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	MemberService service;

	// 회원가입 get
	@RequestMapping(value = "/joinMember", method = RequestMethod.GET)
	public void getjoinMember() {
		logger.info("get joinMember");

	}

	// 회원가입 post
	@RequestMapping(value = "/joinMember", method = RequestMethod.POST)
	public String postjoinMember(memberVO boardVO, RedirectAttributes rttr) throws Exception {

		logger.info("post joinMember");
		service.joinMember(boardVO);
		return "redirect:/member/login";
	}

	// ID,PW페이지 가져오기
	@RequestMapping(value = "/searchIdPw", method = RequestMethod.GET)
	public void getsearchIdPw1() {

	}

	// ID찾기
	@PostMapping(value = "/searchId")
	public String searchId(memberVO mvo, RedirectAttributes reat) {

		memberVO mVO = service.searchId(mvo);

		reat.addFlashAttribute("Id", mVO.getMember_id());

		return "redirect:/member/searchIdPw";

	}

	// PW찾기
	@PostMapping(value = "/searchPw")
	public String searchPw(memberVO mmvo, RedirectAttributes reat) {

		memberVO mmVO = service.searchPw(mmvo);

		reat.addFlashAttribute("Pw", mmVO.getMember_pw());

		return "redirect:/member/searchIdPw";
	}

	// 로그인 페이지 불러오기
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getlogin() {
		return "member/login";
	}

	@PostMapping(value = "/loginPro") // @RequestParam占쎌몵嚥∽옙 login.jsp占쎈퓠占쎄퐣 member_pw獄쏆룇釉섓옙�궎疫뀐옙
	public ModelAndView postlogin(Model model, memberVO membervo, HttpServletRequest req, @RequestParam("member_pw") String member_pw) {
		ModelAndView mv = new ModelAndView();
		try {
			membervo.setMember_pw(member_pw);
			memberVO vo = service.loginPro(membervo);
			
			String logon_id = vo.getMember_id();
			String logon_pw = vo.getMember_pw();

			if (logon_id != null && logon_pw.equals(member_pw)) {				
					HttpSession session = req.getSession();
					session.setAttribute("id", logon_id);
					session.setAttribute("pw", logon_pw);
					mv.setViewName("redirect:/board/main"); //홈으로 이동
			} else {						
				mv.addObject("isLogon", false); 
				mv.setViewName("redirect:/member/login"); //홈으로 이동
			}
		} catch (Exception e) {
			logger.error("Login Error", e);
			mv.setViewName("redirect:/member/login"); //홈으로 이동
		}
		
		mv.addObject("test1", "1"); 
		mv.addObject("test2", "2"); 
		
		return mv;
	}
}
