package com.kosmo.ddabang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.ddabang.service.ItemDTO;
import com.kosmo.ddabang.service.ItemKindDTO;
import com.kosmo.ddabang.service.ItemService;

@Repository
public class ItemDAO implements ItemService {
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public ItemDTO itemSelectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ItemDTO> itemSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ItemKindDTO> itemKindSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int itemInsert(Map map) {
		System.out.println("매물 입력 직전");
		return template.insert("itemInsert",map);
	}

	@Override
	public int itemKindInsert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int itemUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int itemKindUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int itemDelete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
}/// class
