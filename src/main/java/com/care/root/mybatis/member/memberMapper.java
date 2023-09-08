package com.care.root.mybatis.member;

import java.util.ArrayList;

import com.care.root.member.dto.memberDTO;

public interface memberMapper {
	public memberDTO loginChk(String id);
	public int register(memberDTO dto);
	public ArrayList<memberDTO> list();
}
