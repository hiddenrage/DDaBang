package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminMainController {
	
	@RequestMapping("/Admin/Login.bbs")
	public String login() throws Exception {
		return "forward:/WEB-INF/views/admin/member/Login.jsp";
		
	}
	
	@RequestMapping("/Admin/LoginProcess.bbs")
	public String loginProcess() throws Exception {
		
		return "forward:/Admin/Main.bbs";
	}

	@RequestMapping("/Admin/Main.bbs")
	public String adminMain() throws Exception {
		return "Main.admin";
	}/// main
	
}/// class
