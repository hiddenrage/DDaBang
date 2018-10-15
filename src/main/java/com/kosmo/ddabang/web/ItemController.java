package com.kosmo.ddabang.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.ddabang.service.impl.ItemServiceImpl;


@Controller
public class ItemController {
	@Resource(name="itemServiceImpl")
    private ItemServiceImpl service;
	
	@RequestMapping("/Deal/List.bbs")
	public String list() throws Exception {
		
		return "common/item/deal/List.tiles";
	}/// list

	@RequestMapping("/Deal/Write.bbs")
	public String write() throws Exception {
		
		return "common/item/deal/Write.tiles";
	}/// write
	
	@RequestMapping(value="/Deal/Write.bbs",method=RequestMethod.POST)
	public String writeComplete(@RequestParam Map map,HttpSession session) throws Exception {
		System.out.println("입력하기위해 등장");
		map.put("id", session.getAttribute("id"));
		service.itemInsert(map);
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
