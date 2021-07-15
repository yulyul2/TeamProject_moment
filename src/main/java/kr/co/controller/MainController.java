package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class MainController {

	@RequestMapping("/")
	public String main()throws Exception {
		System.out.println("¿‘¿Â!");
		return "board/main";
	}
}
