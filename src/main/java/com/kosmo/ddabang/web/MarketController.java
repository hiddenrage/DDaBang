package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MarketController {

	@RequestMapping("/Market/Main.bbs")
	public String marketMain() throws Exception {
		
		return "common/item/market/MarketMain.tiles";
	}/// marketMain
	
	@RequestMapping("/Market/View.bbs")
	public String marketView() throws Exception {
		
		return "common/item/market/MarketView.tiles";
	}/// marketMain
	
	@RequestMapping("/Market/Research.bbs")
	public String research() throws Exception {
		return "common/item/research/Research.tiles";
	}/// research

	@RequestMapping(value="/Market/Write.bbs",method=RequestMethod.GET)
	public String marketWrite() throws Exception {
		System.out.println("/Market/Write.bbs");
		return "common/item/market/MarketWrite.tiles";
	}/// marketMain
	
	@RequestMapping(value="/Market/Write.bbs",method=RequestMethod.POST)
	public String marketWriteComplete() throws Exception {
		System.out.println("/Market/WriteComplete.bbs");
		return "common/item/market/Main.tiles";
	}/// marketMain
}/// class
