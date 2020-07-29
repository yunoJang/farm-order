package com.farm.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.FavItemDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.entity.Member;

@Service
public class FavItemService {
	@Autowired
	FavItemDao favItemDao;
	@Autowired
	MemberDao memberDao;
	
	public int insert(int itemId, String uName) {
		Member member = memberDao.getFromUid(uName);
		int userId = member.getId();
		int res = favItemDao.insert(itemId,userId);
		return res;
	}

}
