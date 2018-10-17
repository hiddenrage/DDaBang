package com.kosmo.ddabang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.ddabang.service.ItemDTO;
import com.kosmo.ddabang.service.ItemKindDTO;
import com.kosmo.ddabang.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {
	@Resource(name="itemDAO")
	private ItemDAO dao;

	@Override
	public ItemDTO itemSelectOne(Map map) {
		return dao.itemSelectOne(map);
	}

	@Override
	public List<ItemDTO> itemSelectList(Map map) {
		return dao.itemSelectList(map);
	}

	@Override
	public List<ItemKindDTO> itemKindSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int itemInsert(Map map) {
		return dao.itemInsert(map);
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

	@Override
	public int getItemTotalCount(Map map) {
		return dao.getItemTotalCount(map);
	}

	@Override
	public List<ItemDTO> itemSelectAll(Map map) {
		return dao.itemSelectAll(map);
	}

	

}
