package com.kosmo.ddabang.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ItemController {
	@RequestMapping("/Deal/List.bbs")
	public String list() throws Exception {
		
		return "common/item/deal/List.tiles";
	}/// list

	@RequestMapping("/Deal/Write.bbs")
	public String write() throws Exception {
		
		return "common/item/deal/Write.tiles";
	}/// write
	
	@RequestMapping(value="/Deal/Write.bbs",method=RequestMethod.POST)
	public String writeComplete(@RequestParam Map map) throws Exception {
		
		return "common/item/deal/View.tiles";
	}/// write
	
	
	@RequestMapping("/Deal/Edit.bbs")
	public String edit(@RequestParam Map map) throws Exception {
		
		return "common/item/deal/Edit.tiles";
	}/// edit
	
	@RequestMapping("/Deal/View.bbs")
	public String view(@RequestParam Map map) throws Exception {
		
		return "common/item/deal/View.tiles";
	}/// view
}/// class
