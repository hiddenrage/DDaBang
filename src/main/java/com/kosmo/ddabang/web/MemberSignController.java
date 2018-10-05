package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberSignController {
	
	@RequestMapping("/Member/SignUp.bbs")
	public String signUp() throws Exception {
		
		return "common/member/Template.tiles";
	}/// signUp
	/*
	@RequestMapping("/Member/MyPage.bbs")
	public String myPage() throws Exception {
		
		return "common/member/Template.tiles";
	}
	*/
	//전체 이용약관 페이지 이동용
	@RequestMapping("/Member/TotalTerms.bbs")
	public String totalterms() throws Exception{
		return "common/member/signup/terms/TotalTerms.tiles";
	}
	
	//개인정보처리방침 페이지 이동용
	@RequestMapping("/Member/PersonalInfo.bbs")
	public String personal() throws Exception{
		return "common/member/signup/terms/PersonalInfo.tiles";
	}
	
	//공인중개사 회원가입 -> 이용약관
	@RequestMapping("/Member/LreasignupTerms.bbs")
	public String lrea() throws Exception{
		return "common/member/signup/terms/Lreaterms.tiles";
	}
	
	//공인중개사 회원가입 -> 이용약관 -> 입력폼
	@RequestMapping("/Member/Lreasignup.bbs")
	public String lreasignup() throws Exception{
		return "common/member/signup/Lreasignup.tiles";
	}
	
	//일반 회원가입 -> 이용약관 
		@RequestMapping("/Member/GeneralSignUp.bbs")
		public String generalsignup() throws Exception{
			return "common/member/signup/terms/Terms.tiles";
		}
	
	//일반 회원가입 -> 이용약관 -> 입력폼
	@RequestMapping("/Member/Signup.bbs")
	public String signup() throws Exception{
		return "common/member/signup/Signup.tiles";
	}
	
	//일반 회원가입 -> 이용약관 -> 입력폼 -> 가입완료 후 마이페이지 이동
	@RequestMapping("/Member/MyPage.bbs")
	public String mypage() throws Exception{
		return "common/member/MyPage.tiles";
	}
	
	
		
}/// class
