package com.kosmo.ddabang.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SupportController {
	// 1대1 문의 QnA 목록 이동
	@RequestMapping("/Support/QnAList.bbs")
	public String qnaList() throws Exception {
		
		return "common/support/QnAList.tiles";
	}/// qnaList
}/// class
