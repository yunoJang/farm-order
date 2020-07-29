package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.FavItemDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.entity.FavItemView;
import com.farm.web.entity.Member;

@Service("myMemberService")
public class MemberService { //인덱스 서비스로 가는게 맞는가 ?
	
	@Autowired
	FavItemDao favItemDao;
	@Autowired
	MemberDao memberDao;
	
	public Member getIndexMember(String uid) { 
		
		return memberDao.getFromUid(uid);
		
	}
	
	public List<FavItemView> getIndexFiList(String uid) {
		
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavItemView> filist = favItemDao.getIndexFiList(memberid);
		
		if(filist.isEmpty())
			filist=null;
		
		return filist;
	}


}
