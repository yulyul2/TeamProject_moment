package kr.co.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.tipis.AbstractReplicatedMap.MapEntry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@SuppressWarnings("unchecked")
	@GetMapping("/postView")
	public String postView(userVO vo,HttpServletRequest req, Model model, bookmarkVO bvo, postVO pvo)throws Exception {
		logger.info("postView");
		
		HttpSession session = req.getSession();//세션생성하기.
		userVO id1 = (userVO)session.getAttribute("loginUser");//세션 loginUser에 담긴 id 불러와서 userVO를 id1객체로 만들어 담기
		String id = id1.getmember_id();// id1객체의 member_id()를 불러와서 id에 담기.
		bvo.setMember_id(id);//bookmarkVO의 mark_id에 id값 담기.

		bookmarkVO bbvo = service.checkBookmark(bvo);
		//bbvo는 해당 id의 mark_no가 담김. //여기서 문제 이걸 List로 빼오는 문제.
		//id를 넣었으니. service.checkBookmark에서 bookmarkVO의 값을 담은채로 bookmarkVO에 결과값을 담음.
		//그렇게 되면 mark_id에 해당하는 mark_no가 딸려옴.
		int post_no = bbvo.getPost_no();//그래서 여기서 mark_no변수에 가져온 mark_no값을 담음.
		System.out.println(bbvo);
		
		model.addAttribute("mark_no",post_no);//mark_no를 mark_no란 이름으로 저장.
		
		
		//model.addAttribute("booklist", service.bookmarkList(bvo));
		//service.boomarkList에 담김 list로 된 데이터 값들이 "list"이름으로 저장.
		
		//model.addAttribute("selectPost", service.selectPost(bvo));
		/*
		 * 내가 원하는것
		 * 위에서 id값을 이용하여 mark_no까지 불러오고. 이 mark_no를 post테이블의 post_no로 넘겨?
		 * post_no에 맞는 데이터들(게시물)을 가져와서 출력하는것.
		 * 
		 * 1. 시도 - postMapper에서 selectPost로 된 id에 where post_no = #{mark_no}로 해본다
		 * - 여기서 문제, selectOne은 쿼리 결과로 1개의 레코드만 나와야함.
		 * 	다수의 레코드시 TooManyResultException발생.
		 * - SelectList로 가져온 mark_no들을 모두 selectPost에 넣는다면? selectList, selectOne 결정문제
		 */
		
		
		
						
		return "post/postView";
	}
}

