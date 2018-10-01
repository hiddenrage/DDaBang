package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping("/Search/Map.bbs")
	public String mapList()throws Exception{
		
		
		
		return "common/item/search/Map.tiles";
	}
}
