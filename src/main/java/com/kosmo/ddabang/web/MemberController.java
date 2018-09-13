package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/Member/Login.bbs")
	public String login() throws Exception{
		return "common/member/Login.tiles";
	}
}
