package com.kosmo.ddabang.service;

import java.util.List;
import java.util.Map;

public interface ItemService {
	ItemDTO itemSelectOne(Map map); // 매물 단일 검색
	List<ItemDTO> itemSelectList(Map map); // 매물 리스트 (지도맵용)
	List<ItemDTO> itemSelectAll(Map map); // 매물 리스트 (지도리스트용)
	
	List<ItemKindDTO> itemKindSelectList(Map map); // 매물 종류 검색
	
	int getItemTotalCount(Map map);//전체 count수 가져오기
	
	int itemInsert(Map map); 
	int itemKindInsert(Map map); // 매물 종류 입력
	
	int itemUpdate(Map map);
	int itemKindUpdate(Map map);
	
	int itemDelete(Map map);
}/// interface
