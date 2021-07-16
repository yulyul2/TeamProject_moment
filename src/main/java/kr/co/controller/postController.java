package kr.co.controller;



import java.io.File;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import kr.co.service.postService;
import kr.co.utils.UploadFileUtils;
import kr.co.vo.postVO;


@Controller
@RequestMapping("/post/*")
public class postController {
	
	private static final Logger logger = LoggerFactory.getLogger(postController.class);
	
	@Inject
	postService service;
	
	@Resource(name="uploadPath") // servlet-context.xml ���� ���� uploadPath
	private String uploadPath;
	
	@GetMapping("/main")
	public String main()throws Exception {
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
	
	@RequestMapping(value="/postWritePro", method = RequestMethod.POST)
	public String writepro(postVO vo, MultipartFile file)throws Exception{
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		//uploadPath = C:\eclipse-workspace-21-06\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\ProjectSNS
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		//
		vo.setPost_photo2(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		vo.setPost_photo1(File.separator + "imgUpload" + ymdPath + File.separator + "s_" + fileName);
		
		service.postWritePro(vo);
		
		
		return "redirect:/board/main";
		
	}
	
	@RequestMapping("/postViewList")
	public void postViewList() {
		
	};
	
}
