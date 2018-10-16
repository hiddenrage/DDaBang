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
		return template.selectOne("memberLogin",map).equals(1)?true:false;
	}

	@Override
	public List<MemberDTO> memberSelectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO memberSelectOne(Map map) {
		return template.selectOne("memberSelectOne",map);
	}

	@Override
	public List<MemberDTO> expertSelectList(Map map) {
		return null;
	}

	@Override
	public MemberDTO expertSelectOne(Map map) {
		return template.selectOne("expertSelectOne",map);
	}

	@Override
	public int signupInsert(Map map) {		
		return template.insert("signupInsert", map);
	}

	@Override
	public int socialInsert(Map map) {
		return template.insert("socialInsert", map);
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
