package com.kosmo.ddabang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.ddabang.service.MemberService;
import com.kosmo.ddabang.service.MemberDTO;

@Repository
public class MemberDAO implements MemberService {
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean memberLogin(Map map) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<MemberDTO> memberSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO memberSelectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberDTO> expertSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO expertSelectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int signupInsert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int socialInsert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int expertInsert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int pwdUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int expertUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int expertValidUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberDelete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
}// class
