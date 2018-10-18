package com.kosmo.ddabang.web;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;

import com.kosmo.ddabang.service.MemberDTO;
import com.kosmo.ddabang.service.MemberService;

@Controller
public class MemberSignController {
	
	@Resource(name="memberServiceImpl")
    private MemberService service;
	
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
	@RequestMapping("/Member/MoveMain.bbs")
	public String moveMain() throws Exception{
		return "forward:/";
	}
	
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
	
	//매물관리규정 페이지 이동용
	@RequestMapping("/Member/Sales.bbs")
	public String Sales() throws Exception{
		return "common/member/signup/terms/SalesTerms.tiles";
	}
	
	//자동화서비스 규정 페이지 이동용
	@RequestMapping("/Member/AutoSave.bbs")
	public String auto() throws Exception{
		return "common/member/signup/terms/AutoSaveTerms.tiles";
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
	public String signup(HttpSession session,Map map) throws Exception{
		return "common/member/signup/Signup.tiles";
	}
	
	//일반 회원가입 -> 이용약관 -> 입력값 넘기기
	@RequestMapping("/Member/SignupInsert.bbs")
	public String mypage(@RequestParam Map map,HttpSession session) throws Exception{
		
		map.put("id", map.get("id").toString()+map.get("id2"));
		map.put("tel", map.get("tel").toString()+"-"+map.get("tel2")+"-"+map.get("tel3"));
		/*
		Set<String> set = map.keySet();
		for(String key:set) {
			System.out.println(key+":"+map.get(key));
		}
		*/
		service.signupInsert(map);
		
		return "common/member/Login.tiles";
	}	
	
	//회원가입 입력값 넘기기
	@RequestMapping("/Member/MyPagelist.bbs")
	public String mypagelist(HttpSession session,Model model) throws Exception{
		
		Map map = new HashMap();
		
		map.put("id", session.getAttribute("id"));
		
		MemberDTO record = service.memberSelectOne(map);
		
		model.addAttribute("record", record);
		
		MemberDTO dto = service.expertSelectOne(map);
		
		
		model.addAttribute("dto", dto);
		
		return "common/member/MyPage.tiles";
	}
	
	//공인중개사 입력값 넘기기
	@RequestMapping("/Member/expertsignup.bbs")
	public String expertsignup(@RequestParam Map map,HttpSession session) throws Exception{
		
		map.put("id", map.get("id").toString()+map.get("id2"));
		map.put("tel", map.get("tel").toString()+"-"+map.get("tel2")+"-"+map.get("tel3"));
		map.put("business_number", map.get("business_number").toString()+"-"+map.get("business_number2")+"-"+map.get("business_number3"));
		map.put("address", map.get("address").toString()+map.get("address2"));
		map.put("manager_tel", map.get("manager_tel").toString()+"-"+map.get("manager_tel2")+"-"+map.get("manager_tel3"));
			
			/*
			Set<String> set = map.keySet();
			for(String key:set) {
				System.out.println(key+":"+map.get(key));
			}
			*/
			
		service.expertInsert(map);
		
		return "common/member/Login.tiles";
	}
	
	//마이페이지에서 회원 탈퇴
	@RequestMapping("/Member/MemberDelete.bbs")
	public String memberDelete(HttpSession session) throws Exception{
		
		Map map = new HashMap();
		
		map.put("id", session.getAttribute("id"));
		
		service.memberDelete(map);
			
		return "redirect:/Member/Logout.bbs";
	}///
	
	//일반 회원가입 -> 이용약관 
	@RequestMapping("/Member/PwdUpdate.bbs")
	public String pwdupdate(@RequestParam Map map,HttpSession session) throws Exception{
		
			map.put("id", session.getAttribute("id"));
			
			map.put("pwd", map.get("newpwd"));
			
			service.pwdUpdate(map);

		return "common/member/Login.tiles";
	}
		
}/// class
