package com.kosmo.ddabang.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.ddabang.service.ItemDTO;

@Controller
public class SearchController {
	
	@RequestMapping("/Search/Map.bbs")
	public String map(Model model)throws Exception{	
		JSONArray array = new JSONArray();
		return "common/item/search/Map.tiles";
	}
	@ResponseBody
	@RequestMapping(value="/Search/MapList.bbs",produces="text/plain; charset=UTF-8")
	public String mapList()throws Exception{
		Map map = new HashMap();
		List<Map> collections = new Vector<Map>();
		List<ItemDTO> lists = new Vector<>();
		ItemDTO dto = new ItemDTO();
		dto.setAddress("서울특별시 광진구 능동로 415, 참존빌딩 3층 (중곡동)");
		dto.setX(127.1284868);
		dto.setY(37.549963);
		lists.add(dto);
		
		dto = new ItemDTO();
		dto.setAddress("서울특별시 광진구 동일로 74 (자양동)");
		dto.setX(127.0626864);
		dto.setY(37.5392775);
		lists.add(dto);
		
		dto = new ItemDTO();
		dto.setAddress("서울특별시 강동구 상암로11길 5, 2층 (암사동)");
		dto.setX(127.1284868);
		dto.setY(37.549963);
		lists.add(dto);
		
		dto = new ItemDTO();
		dto.setAddress("서울특별시 강동구 상암로11길 5, 2층 (암사동)");
		dto.setX(127.0841901);
		dto.setY(37.5661775);
		lists.add(dto);
		
		for(ItemDTO  list:lists) {
			Map record = new HashMap();
			record.put("address", list.getAddress());
			record.put("x", list.getX());
			record.put("y", list.getY());
			collections.add(record);
		}
		System.out.println(JSONArray.toJSONString(collections));	
		
		return JSONArray.toJSONString(collections);
	}
}
