package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {

	@RequestMapping("/Admin/Main.bbs")
	public String main() throws Exception {
		return "main.admin";
	}/// main
	
}/// class
