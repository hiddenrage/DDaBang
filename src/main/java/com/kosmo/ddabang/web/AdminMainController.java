package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {

	@RequestMapping("/Admin/Main.bbs")
	public String adminMain() throws Exception {
		return "Main.admin";
	}/// main
	
}/// class
