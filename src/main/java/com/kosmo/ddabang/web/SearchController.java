package com.kosmo.ddabang.web;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.ddabang.service.ItemDTO;
import com.kosmo.ddabang.service.impl.ItemServiceImpl;
import com.kosmo.ddabang.service.impl.PagingUtil;

@Controller
public class SearchController {
	@Resource(name="itemServiceImpl")
    private ItemServiceImpl service;
	
	
	@RequestMapping("/Search/Map.bbs")
	public String map(Model model)throws Exception{	
		return "common/item/search/Map.tiles";
	}
	//지도용
	@ResponseBody
	@RequestMapping(value="/Search/MapList.bbs",produces="text/plain; charset=UTF-8",method=RequestMethod.POST)
	public String map()throws Exception{
		
		List<Map> collections = new Vector<Map>();
		List<ItemDTO> lists = service.itemSelectList(null);
			
		for(ItemDTO  list:lists) {
		Map record = new HashMap();				
			record.put("x", list.getX());
			record.put("y", list.getY());
			record.put("address", list.getAddress());
			collections.add(record);
		}			
		return JSONArray.toJSONString(collections);
	}
	
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	//지도 리스트용
	@ResponseBody
	@RequestMapping(value="/Search/MapList.bbs",produces="text/plain; charset=UTF-8",method=RequestMethod.GET)
	public String list(
			HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,//검색용 파라미터 받기
			@RequestParam(required=false,defaultValue="1") int nowPage
			)throws Exception{
		
		int totalRecordCount= service.getItemTotalCount(map);
		System.out.println(totalRecordCount);
		
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		
		map.put("start",start);
		map.put("end",end);
		
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/Search/MapList.bbs?");
		
		List<Map> collections = new Vector<Map>();
		List<ItemDTO> lists = service.itemSelectAll(map);
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
			record.put("content", list.getContent().substring(0,10)+"...");				
			record.put("x", list.getX());
			record.put("y", list.getY());
			collections.add(record);
		}
		record = new HashMap();
		record.put("pagingString", pagingString);
		collections.add(record);			
		return JSONArray.toJSONString(collections);
	}
	
	@RequestMapping(value="/Search/View.bbs")
	public String move(@RequestParam Map map,Model model)throws Exception{
		
		ItemDTO dto = service.itemSelectOne(map);
		Map collection = new HashMap();
		
		collection.put("no", dto.getNo());
		collection.put("id", dto.getId());
		collection.put("address", dto.getAddress());
		collection.put("kind", dto.getKind());
		collection.put("select_floor", dto.getSelect_floor());
		collection.put("manage_money", dto.getManage_money());
		collection.put("parking", dto.getParking());
		collection.put("content", dto.getContent());				
		collection.put("x", dto.getX());
		collection.put("y", dto.getY());
		model.addAttribute("dto", JSONObject.toJSONString(collection));	
		model.addAttribute("item", dto);
		return "common/item/search/View.tiles";
	}
	
}
