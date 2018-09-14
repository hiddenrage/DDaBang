package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarketController {

	@RequestMapping()
	public String marketMain() throws Exception {
		
		return "common/item/market/Main.tiles";
	}/// marketMain
	
	@RequestMapping()
	public String marketView() throws Exception {
		
		return "";
	}/// marketMain

	@RequestMapping()
	public String marketWrite() throws Exception {
		
		return "";
	}/// marketMain
}/// class
