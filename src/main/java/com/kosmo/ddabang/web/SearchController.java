package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping("/Search/Map.bbs")
	public String mapList()throws Exception{	
		
		return "common/item/search/Map.tiles";
	}
	
	//탑메뉴 -> 본방/찜방
	@RequestMapping("/Search/Select.bbs")
	public String selectRoom()throws Exception{	
		
		return "common/member/normal/SelectRoom.tiles";
	}
	
}
