package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock.Catch;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.MemberService;
import kr.co.vo.memberVO;

@Controller
//@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	private String board = "redirect:/board/";
	
	
	@Inject
	MemberService service;
	
	//회원가입 get
	@RequestMapping(value = "/member/joinMember", method = RequestMethod.GET)
	public void getjoinMember() {
		logger.info("get joinMember");

	}
	
	//회원가입 post
	@RequestMapping(value = "/member/joinMember", method = RequestMethod.POST)
	public String postjoinMember(memberVO boardVO, RedirectAttributes rttr) throws Exception {
		
		
		logger.info("post joinMember");
		
		service.joinMember(boardVO);
		
		return "redirect:/member/login";
	}
	
	
	
	
	//ID,PW페이지 가져오기
	@RequestMapping(value="/member/searchIdPw", method=RequestMethod.GET)
	public void getsearchIdPw1() {
		
	}
	
	//ID찾기
	@PostMapping(value="/member/searchId")
	public String searchId(memberVO mvo, RedirectAttributes reat) {
		
		memberVO mVO = service.searchId(mvo);
		
		
			
			reat.addFlashAttribute("Id",mVO.getMember_id());
		
			return "redirect:/member/searchIdPw";
		
	}
	
		
	//PW찾기
	@PostMapping(value="/member/searchPw")
	public String searchPw(memberVO mmvo, RedirectAttributes reat) {
		
		memberVO mmVO = service.searchPw(mmvo);
		
			
			reat.addFlashAttribute("Pw",mmVO.getMember_pw());
		
		return "redirect:/member/searchIdPw";
	}
	
	
	
	//로그인 페이지 불러오기
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public void getlogin() {
		
	}
	
	@PostMapping(value="/member/loginPro")							//@RequestParam占쎌몵嚥∽옙 login.jsp占쎈퓠占쎄퐣 member_pw獄쏆룇釉섓옙�궎疫뀐옙
	public String postlogin(memberVO membervo, HttpServletRequest req,@RequestParam("member_pw") String member_pw) {
		memberVO vo = service.loginPro(membervo);
		
		String id = vo.getMember_id();
		String pw = vo.getMember_pw();
		
		HttpSession session = req.getSession();
		
		/*if(id != null) {
			if(pw.equals(member_pw)) {
			
			return "redirect:/baord/main";
			
			}else{
				
				return "redirect:/member/login";
			}
		
		}else {
			return "redirect:/member/login";
		}*/
		
		try {
		if(vo.getMember_id() != null ) {
			if(vo.getMember_pw().equals(member_pw)) {
				//占쎄쉭占쎈�∽옙�몵嚥∽옙 id, pw獄쏆룄由�.
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				return ("board/"+ "main");
			}else {
				System.out.println("�뜮袁⑨옙甕곕뜇�깈揶쏉옙 占쏙옙占쎌죬占쎈뮸占쎈빍占쎈뼄!");//占쎈선占쎈섯野껓옙 筌ｌ꼶�봺占쎈막野껉퍔�뵥筌욑옙 占쎄문揶쏄낱釉�疫뀐옙
				return "redirect:/member/login";
			}
		}else {
			System.out.println("占쎈툡占쎌뵠占쎈탵揶쏉옙 占쎈씨占쎈뮸占쎈빍占쎈뼄!");//占쎈선占쎈섯野껓옙 筌ｌ꼶�봺占쎈막野껉퍔�뵥筌욑옙 占쎄문揶쏄낱釉�疫뀐옙, 占쎈툡占쎌뵠占쎈탵 占쎌뿯占쎌젾 占쎌뜎 占쎈툡占쎌뵠占쎈탵揶쏉옙 鈺곕똻�삺占쎈릭筌욑옙 占쎈륫占쎌뱽占쎈르 筌ｌ꼶�봺占쎈막 獄쎻뫖苡� 占쎄문揶쏄낱釉�疫뀐옙.
			return "redirect:/member/login";
		}
		}catch(NullPointerException e){
			return "redirect:/member/login";
		}
	
	//&& vo.getMember_pw() == null
	}
	
	
	
}
