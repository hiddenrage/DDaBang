package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberSignController {
	@RequestMapping("/Member/SignUp.bbs")
	public String signUp() throws Exception {
		
		return "common/member/Template.tiles";
	}/// signUp
	
	@RequestMapping("/Member/MyPage.bbs")
	public String myPage() throws Exception {
		
		return "common/member/Template.tiles";
	}
}/// class
