package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.FavItemDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.entity.FavItem;
import com.farm.web.entity.FavItemView;
import com.farm.web.entity.Member;

@Service
public class FavItemService {
	
	@Autowired
	FavItemDao favItemDao;
	@Autowired
	MemberDao memberDao;
	
	public int insert(int itemId, String uName) {
		Member member = memberDao.getFromUid(uName);
		int memberId = member.getId();
		
		int favId = 0;
		boolean isFavContain = false;
		
		List<FavItem> favList = favItemDao.getListTomemberId(memberId);
		for(FavItem fi : favList) {
			if(itemId == fi.getItemId()) {
				favId = fi.getId();
				isFavContain = true;
			}
		}
		
		int res = 0;
		
		if(isFavContain) {
			favItemDao.delete(favId);
			res = 2;
		}
		else {
			favItemDao.insert(itemId,memberId);
			res = 1;
		}
		
		return res;
	}
	
	public List<FavItemView> getViewList(String uid){
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavItemView> filist = favItemDao.getViewList(memberid);
		
		if(filist.isEmpty())
			filist=null;
		
		return filist;
		
	}

}
