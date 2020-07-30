package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.FavItemDao;
import com.farm.web.dao.FavSellerDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.entity.FavItemView;
import com.farm.web.entity.FavSellerView;
import com.farm.web.entity.Member;

@Service("myMemberService")
public class MemberService { //인덱스 서비스로 가는게 맞는가 ?
	
	@Autowired
	FavItemDao favItemDao;
	@Autowired
	MemberDao memberDao;
	@Autowired
	FavSellerDao favSellerDao;
	
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
	
	public List<FavItemView> getFiViewList(String uid){
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavItemView> filist = favItemDao.getViewList(memberid);
		
		if(filist.isEmpty())
			filist=null;
		
		return filist;
		
	}
	
	public List<FavSellerView> getIndexFvList(String uid) {
		
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavSellerView> fslist = favSellerDao.getIndexFarmList(memberid);
		
		if(fslist.isEmpty())
			fslist=null;
		
		return fslist;
	}
	
	public List<FavSellerView> getFarmViewList(String uid){
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavSellerView> fslist = favSellerDao.getFarmViewList(memberid);
		
		if(fslist.isEmpty())
			fslist=null;
		
		return fslist;
		
	}


}
