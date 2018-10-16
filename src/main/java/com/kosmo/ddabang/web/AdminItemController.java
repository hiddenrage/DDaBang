package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminItemController {
	@RequestMapping("/Admin/ItemCollect.bbs")
	public String collect() throws Exception {
		
		return "bbs/item/ItemCollect.admin";
	}/// collect
}/// class
