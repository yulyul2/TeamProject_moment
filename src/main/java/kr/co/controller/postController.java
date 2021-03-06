package kr.co.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@Resource(name="uploadPath") // servlet-context.xml 에서 불러온 uploadPath
	private String uploadPath;
	
	@GetMapping("/main")
	public String main(userVO vo,HttpServletRequest req, Model model)throws Exception {
		HttpSession session = req.getSession();
		userVO id1 = (userVO)session.getAttribute("loginUser");
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
		HttpSession session = req.getSession();
		userVO id1 = (userVO)session.getAttribute("loginUser");
		String id = id1.getmember_id();
		System.out.println(id);
		model.addAttribute("id", id);
		
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
		vo.setPost_id(id);
		service.postWritePro(vo);
		
		return "/post/main";
	}
	
	@GetMapping("/postView")
	public String postView(userVO vo,HttpServletRequest req, Model model, bookmarkVO bvo)throws Exception {
		logger.info("postView");
		
		HttpSession session = req.getSession();
		userVO id1 = (userVO)session.getAttribute("loginUser");
		String id = id1.getmember_id();
		
		bvo.setMark_id(id);
		
		bookmarkVO bbvo = service.checkBookmark(bvo);
		
		int mark_no = bbvo.getMark_no();
		
		model.addAttribute("mark_no",mark_no);
		model.addAttribute("list", service.bookmarkList(bbvo));
		
		return "post/postView";
	}
}

