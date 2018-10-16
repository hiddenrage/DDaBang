package com.kosmo.ddabang.service;

import java.util.List;
import java.util.Map;

public interface ItemService {
	ItemDTO itemSelectOne(Map map); // 매물 단일 검색
	List<ItemDTO> itemSelectList(Map map); // 매물 리스트 (검색/페이징 아직)
	List<ItemKindDTO> itemKindSelectList(Map map); // 매물 종류 검색
	
	int itemInsert(Map map); 
	int itemKindInsert(Map map); // 매물 종류 입력
	
	int itemUpdate(Map map);
	int itemKindUpdate(Map map);
	
	int itemDelete(Map map);
}/// interface
