package com.kosmo.ddabang.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kosmo.ddabang.service.impl.NaverLoginBO;

@Controller
public class MemberController {
	@Resource(name="naverLoginBO")
	private NaverLoginBO naverLoginBO;
    private String apiResult = null;
	
	@RequestMapping("/Member/Login.bbs")
	public String login(Model model, HttpSession session) throws Exception{
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);
		return "common/member/Login.tiles";
	}
	

	 //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value="/Member/Callback.bbs",method={ RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
            throws Exception {
        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);   
        String[] result = apiResult.split(",");
        String email = null;
        String name = null;
        for(int i=0;i<result.length;i++) {
        	if(result[i].indexOf("email") != -1) {
        		String[] value = result[i].split(":");
        		email = value[1];
        	}else if(result[i].indexOf("name") != -1) {
        		String[] value = result[i].split(":");
        		name = value[1];
        	}
        }
        System.out.println(email+" "+name);
 
        
        //로그인 성공되였으니 여기다 db 작
      
        return "redirect://";
    }

}
