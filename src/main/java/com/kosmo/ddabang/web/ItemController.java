package com.kosmo.ddabang.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.ddabang.service.ItemDTO;
import com.kosmo.ddabang.service.impl.ItemServiceImpl;


@Controller
public class ItemController {
	@Resource(name="itemServiceImpl")
    private ItemServiceImpl service;
	
	@RequestMapping("/Deal/List.bbs")
	public String list(HttpSession session,Model model) throws Exception {	
		Map map = new HashMap();
		map.put("id", session.getAttribute("id"));
		List<ItemDTO> lists = service.itemSelectList(map);	
		List<Map> collections = new Vector<Map>();
		Map record = null;		
		for(ItemDTO  list:lists) {
			record = new HashMap();
			record.put("no", list.getNo());
			record.put("id", list.getId());
			record.put("address", list.getAddress());
			record.put("kind", list.getKind());
			record.put("select_floor", list.getSelect_floor());
			record.put("manage_money", list.getManage_money());
			record.put("parking", list.getParking());
			record.put("content", list.getContent());				
			record.put("x", list.getX());
			record.put("y", list.getY());
			collections.add(record);
		}
		System.out.println(JSONArray.toJSONString(collections));
		model.addAttribute("data", JSONArray.toJSONString(collections));
						
		return "common/item/deal/List.tiles";
	}/// list

	@RequestMapping("/Deal/Write.bbs")
	public String write() throws Exception {
		
		return "common/item/deal/Write.tiles";
	}/// write
	
	@RequestMapping(value="/Deal/Write.bbs",method=RequestMethod.POST)
	public String writeComplete(@RequestParam Map map,HttpSession session) throws Exception {
		System.out.println("입력하기위해 등장");
		Set<String> set=map.keySet();
		for(String key:set) System.out.println(key+" : "+map.get(key));

		if(map.get("manage_money")=="" || Integer.parseInt(map.get("manage_money").toString())<0)
			map.put("manage_money", 0);
		
		if(map.get("parking_pay")=="" || Integer.parseInt(map.get("parking_pay").toString())<0)
			map.put("parking", 0);
		else 
			map.put("parking", map.get("parking_pay"));
		
		map.put("elevator", map.get("elevator")=="있음"?'Y':'N');
		map.put("animal", map.get("animal")=="가능"?'Y':'N');
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
