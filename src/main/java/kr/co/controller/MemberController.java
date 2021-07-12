package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock.Catch;
import org.hamcrest.core.IsNull;
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
	
	//�쉶�썝媛��엯 get
	@RequestMapping(value = "/member/joinMember", method = RequestMethod.GET)
	public void getjoinMember() {
		logger.info("get joinMember");

	}
	
	//�쉶�썝媛��엯 post
	@RequestMapping(value = "/member/joinMember", method = RequestMethod.POST)
	public String postjoinMember(memberVO boardVO, RedirectAttributes rttr) throws Exception {
		
		
		logger.info("post joinMember");
		
		service.joinMember(boardVO);
		
		return "redirect:/member/login";
	}
	
	
	
	
	//ID,PW李얘린 �럹�씠吏� 諛쏆븘�삤湲�
	@RequestMapping(value="/member/searchIdPw", method=RequestMethod.GET)
	public void getsearchIdPw1() {
		
	}
	
	//ID異쒕젰
	@PostMapping(value="/member/searchId")
	public String searchId(memberVO mvo, RedirectAttributes reat) {
		
		memberVO mVO = service.searchId(mvo);
		
		
			
			reat.addFlashAttribute("Id",mVO.getMember_id());
		
			return "redirect:/member/searchIdPw";
		
	}
	//媛믪쓣 媛�吏�怨� Id,Pw李얘린 �럹�씠吏�濡� �씠�룞
		
	//PW異쒕젰
	@PostMapping(value="/member/searchPw")
	public String searchPw(memberVO mmvo, RedirectAttributes reat) {
		
		memberVO mmVO = service.searchPw(mmvo);
		
			
			reat.addFlashAttribute("Pw",mmVO.getMember_pw());
		
		return "redirect:/member/searchIdPw";
	}
	//媛믪쓣 媛�吏�怨� Id,Pw李얘린 �럹�씠吏�濡� �씠�룞
	
	
	
	
	//濡쒓렇�씤�럹�씠吏� 諛쏆븘�삤湲�
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public void getlogin() {
		
	}
	
	@PostMapping(value="/member/loginPro")							//@RequestParam�쑝濡� login.jsp�뿉�꽌 member_pw諛쏆븘�삤湲�
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
				//�꽭�뀡�쑝濡� id, pw諛쏄린.
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				return ("board/"+ "main");
			}else {
				System.out.println("鍮꾨�踰덊샇媛� ���졇�뒿�땲�떎!");//�뼱�뼸寃� 泥섎━�븷寃껋씤吏� �깮媛곹븯湲�
				return "redirect:/member/login";
			}
		}else {
			System.out.println("�븘�씠�뵒媛� �뾾�뒿�땲�떎!");//�뼱�뼸寃� 泥섎━�븷寃껋씤吏� �깮媛곹븯湲�, �븘�씠�뵒 �엯�젰 �썑 �븘�씠�뵒媛� 議댁옱�븯吏� �븡�쓣�븣 泥섎━�븷 諛⑸쾿 �깮媛곹븯湲�.
			return "redirect:/member/login";
		}
		}catch(NullPointerException e){
			return "redirect:/member/login";
		}
	
	//&& vo.getMember_pw() == null
	}
	
	
	
}
