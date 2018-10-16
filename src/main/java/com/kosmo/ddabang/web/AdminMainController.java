package com.kosmo.ddabang.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.ddabang.service.MemberService;

@Controller
public class AdminMainController {
	@Resource(name="memberServiceImpl")
    private MemberService service;
	
	@RequestMapping("/Admin/Login.bbs")
	public String adminLogin() throws Exception {
		return "forward:/WEB-INF/views/admin/Login.jsp";
	}/// adminLogin
	
	@RequestMapping("/Admin/LoginProcess.bbs")
	public String adminLoginProcess(@RequestParam Map map) throws Exception {
		if(service.adminLogin(map))
			return "forward:/Admin/Main.bbs";			
		else
			return "forward:/Admin/Login.bbs";
	}/// adminLoginProcess
	
	@RequestMapping("/Admin/Logout.bbs")
	public String adminlogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/Admin/Login.bbs";
	}/// adminlogout

	@RequestMapping("/Admin/Main.bbs")
	public String adminMain() throws Exception {
		return "Main.admin";
	}/// adminMain
}/// class
