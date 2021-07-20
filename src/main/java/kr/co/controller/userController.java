package kr.co.controller;

import java.io.File;

import javax.annotation.Resource;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.userService;
import kr.co.utils.UploadFileUtils;
import kr.co.vo.userVO;

@Controller
@RequestMapping("/user/*")
public class userController {
	private static final Logger logger = LoggerFactory.getLogger(postController.class);	
	
	@Inject
	userService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	//로그인 페이지 불러오기
	@GetMapping("/login")
	public String getlogin() {
	   return "user/login";
    }
	
	@PostMapping("/loginPro")							//@RequestParam 은 login.jsp 에서 member_pw값을 가져옴.
	public String postlogin(userVO uservo, HttpServletRequest req,@RequestParam("member_pw") String member_pw,
							//@RequestParam("member_id") String member_id,
							Model model) {
		
		userVO vo = service.loginPro(uservo);
		
		HttpSession session = req.getSession();
		
		try {
			if (vo != null) {
				if (vo.getmember_pw().equals(member_pw)) {
					session.setAttribute("loginUser", uservo);
					
					/* 회원정보 불러오기 중
					userVO id1 = (userVO)session.getAttribute("loginUser");
					String id = id1.getmember_id();
					vo.setmember_id(id);*/
					//로그인 성공
		            model.addAttribute("message","로그인에 성공했습니다.");
		            model.addAttribute("url","/post/main");
		            
					return ("messageCheck");
				} else {
					//로그인 실패 (비밀번호 틀렸을 경우) : 비밀번호 틀린 경우와 가입된 정보 없는 경우 문구 동일하게 해야 함
		            model.addAttribute("message","가입한 정보가 없거나 비밀번호가 일치하지 않습니다.");
		            model.addAttribute("url","/user/login");
					return ("messageCheck");
				}
			}else {
				//로그인 실패 (가입된 정보 없는 경우) : 비밀번호 틀린 경우와 가입된 정보 없는 경우 문구 동일하게 해야 함
	            model.addAttribute("message","가입한 정보가 없거나 비밀번호가 일치하지 않습니다.");
	            model.addAttribute("url","/user/login");
				return ("messageCheck");
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			return "user/login";
		}
	}
	
	//회원가입 페이지 불러오기
	@GetMapping("/join")
	public String getjoin() {
		logger.info("getjoin");
		
		return "user/join";
	}
	
	//회원가입 post
	@PostMapping("/join")
	public String postjoin(userVO uservo, RedirectAttributes rttr, MultipartFile file) throws Exception {
		logger.info("postjoin");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		//
		uservo.setImage_path(File.separator + "imgUpload" + ymdPath + File.separator + "s_" + fileName);
		
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
		return "/user/searchFail";
	}
		
	//PW찾기
	@PostMapping("/searchPw")
	public String searchPw(userVO mmvo, RedirectAttributes reat) {
		userVO mmVO = service.searchPw(mmvo);
		if(mmVO != null) {
			reat.addFlashAttribute("Pw",mmVO.getmember_pw());
		}
		return "/user/searchFail";
	}
	
	//회원정보수정 get
	@GetMapping("/myInfo")
	public String getuserUpdate() {
		logger.info("get userUpdate");
		return "user/myInfo";
	}
	
	//회원정보수정 post
	@PostMapping("/myInfoPro")
	public String postuserUpdate(HttpSession session, userVO vo, @RequestParam("member_pw") String member_pw, Model model) throws Exception {
		logger.info("post userUpdate");
		
		userVO currentUser = (userVO) session.getAttribute("loginUser");
	
		if(!currentUser.getmember_id().equals("")) {
			if(currentUser.getmember_pw().equals(member_pw)) {
				vo.setmember_id(currentUser.getmember_id());
				service.userUpdate(vo);
				//회원정보수정 성공
				model.addAttribute("message","회원정보 수정이 완료되었습니다.");
	            model.addAttribute("url","/post/main");
				return ("messageCheck");
			}else{
				//회원정보수정 실패 (비밀번호 틀림)
	            model.addAttribute("message","비밀번호를 다시 확인해주세요.");
	            model.addAttribute("url","/user/myInfo");
				return ("messageCheck");
			}
		}else{
			//회원정보수정 실패 (세션에 저장된 정보 없음)
            model.addAttribute("message","회원정보 수정에 실패했습니다. 다시 로그인 해주세요.");
            model.addAttribute("url","/user/login");
			return ("messageCheck");
		}
	}
	
	//회원탈퇴 get
	@GetMapping("/leave")
	public String getuserDelete() throws Exception{
		logger.info("get userDelete");
		return "user/leave";
	}
	
	//회원탈퇴 post
	@PostMapping("/leave")
	public String postuserDelete(userVO vo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception{
		logger.info("post userDelete");
		
		// 세션에 있는 loginUser 를 가져와 session 변수에 넣어줍니다.
		userVO currentUser = (userVO) session.getAttribute("loginUser");
		if(currentUser != null) {
			// 세션에있는 비밀번호
			Class<? extends userVO> sessionPass = currentUser.getClass();
			// vo로 들어오는 비밀번호
			Class<? extends userVO> voPass = vo.getClass();
			if((sessionPass.equals(voPass))) {
				currentUser.setmember_pw(vo.getmember_pw());
				service.userDelete(currentUser);
				session.invalidate();
				//회원탈퇴 성공
				model.addAttribute("message","회원탈퇴가 완료되었습니다.");
	            model.addAttribute("url","/user/login");
				return ("messageCheck");
			}else{
				rttr.addFlashAttribute("msg", false);
				//회원탈퇴 실패 (비밀번호 틀림)
	            model.addAttribute("message","비밀번호를 다시 확인해주세요.");
	            model.addAttribute("url","/user/leave");
				return ("messageCheck");
			}
		}else{
			//회원탈퇴 실패 (세션에 저장된 정보 없음)
            model.addAttribute("message","회원탈퇴에 실패했습니다. 다시 로그인 해주세요.");
            model.addAttribute("url","/user/login");
			return ("messageCheck");
		}
	}
}
