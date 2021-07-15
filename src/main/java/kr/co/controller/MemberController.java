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

import kr.co.service.MemberService;
import kr.co.vo.memberVO;

@Controller
@RequestMapping("/")
public class MemberController {
   private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
   
   @Inject
   MemberService service;
   
   //로그인 페이지 불러오기
   @GetMapping("")
   public String getlogin() {
	   return "member/login";
   }
   
   @PostMapping("/user/loginPro")                     //@RequestParam 은 login.jsp 에서 member_pw값을 가져옴.
   public String postlogin(memberVO membervo, HttpServletRequest req,@RequestParam("member_pw") String member_pw) {
      memberVO vo = service.loginPro(membervo);
      
      String id = vo.getMember_id();
      String pw = vo.getMember_pw();
      
      HttpSession session = req.getSession();
      
      try {
	      if(vo.getMember_id() != null ) {
	         if(vo.getMember_pw().equals(member_pw)) {
	            //세션으로 ID,PW 저장.
	            session.setAttribute("id", id);
	            session.setAttribute("pw", pw);
	            return ("board/"+ "main");
	         }else {
	            System.out.println("비밀번호가 일지하지 않습니다!!");
	            return "/member/login";
	         }
	      }else {
	         System.out.println("아이디를 입력해 주세요!!");
	         return "/member/login";
	      }
      }catch(NullPointerException e){
         return "/member/login";
      }
   //&& vo.getMember_pw() == null
   }
   
   //회원가입 get
   @GetMapping("/user/join")
   public String getjoinMember() {
      logger.info("get joinMember");
      return "/member/joinMember";
   }
   
   //회원가입 post
   @PostMapping("/member/join")
   public String postjoinMember(memberVO boardVO, RedirectAttributes rttr) throws Exception {
      logger.info("post joinMember");
      
      service.joinMember(boardVO);
      
      return "/member/login";
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
      
      return "/member/searchIdPw";
   }
      
   //PW찾기
   @PostMapping(value="/member/searchPw")
   public String searchPw(memberVO mmvo, RedirectAttributes reat) {
      memberVO mmVO = service.searchPw(mmvo);
      
      reat.addFlashAttribute("Pw",mmVO.getMember_pw());
      
      return "/member/searchIdPw";
   }
}
