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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.service.postService;
import kr.co.service.userService;
import kr.co.utils.UploadFileUtils;
import kr.co.vo.bookmarkVO;
import kr.co.vo.postVO;
import kr.co.vo.userVO;

@Controller
@RequestMapping("/post/*")
public class postController {
	private static final Logger logger = LoggerFactory.getLogger(postController.class);
	
	@Inject
	postService service;
	@Inject
	userService uservice;

	@Resource(name = "uploadPath") // servlet-context.xml 에서 불러온 uploadPath
	private String uploadPath;

	@GetMapping("/main")
	public String main(userVO vo, HttpServletRequest req, Model model) throws Exception {
		HttpSession session = req.getSession();
		userVO id1 = (userVO) session.getAttribute("loginUser");
		String id = id1.getmember_id();

		vo.setmember_id(id);
		
		userVO uvo = uservice.userInfo(vo);
		
		String name = uvo.getmember_name();
		
		model.addAttribute("name",name);
		
		return "post/main";
	}
	
	
	@GetMapping("/home")
	public String home()throws Exception {
		return "post/home";
	}
	
	@GetMapping("/postWrite")
	public String write()throws Exception {
		return "post/postWrite";
	}
	
	@RequestMapping(value="/postWritePro", method=RequestMethod.POST)
	public String postWritePro(HttpServletRequest req, postVO vo, MultipartFile file, Model model)throws Exception{
		/*HttpSession session = req.getSession();
		userVO id1 = (userVO)session.getAttribute("loginUser");
		String id = id1.getmember_id();
		System.out.println(vo.getPost_photo2());
		System.out.println(file);
		
		model.addAttribute("id", id);*/
		System.out.println(file);
		System.out.println(vo.getPost_photo2());
		
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		//
		vo.setPost_photo2(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		vo.setPost_photo1(File.separator + "imgUpload" + ymdPath + File.separator + "s_" + fileName);
		//vo.setPost_id(id);
		service.postWritePro(vo);
		
		return "/post/main";
	}
	
	
	@GetMapping("/postView")
	public String bookmarkView(userVO vo,HttpServletRequest req, Model model, bookmarkVO bvo, postVO pvo)throws Exception {
		logger.info("postView");
		
		HttpSession session = req.getSession();//세션생성하기.
		userVO id1 = (userVO)session.getAttribute("loginUser");//세션 loginUser에 담긴 id 불러와서 userVO를 id1객체로 만들어 담기
		String id = id1.getmember_id();// id1객체의 member_id()를 불러와서 id에 담기.
		bvo.setMember_id(id);//로그인된 id를 

		model.addAttribute("list",service.selectBookmark(bvo));
		
		
		return "post/postView";
	}
}

