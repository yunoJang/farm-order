package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.BasketDao;
import com.farm.web.dao.FavItemDao;
import com.farm.web.dao.FavSellerDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.dao.OrderItemDao;
import com.farm.web.entity.FavItemView;
import com.farm.web.entity.FavSellerView;
import com.farm.web.entity.Member;
import com.farm.web.entity.SellerCategoryCountView;
import com.farm.web.entity.SimpleCountView;

@Service("myMemberService")
public class MemberService { //인덱스 서비스로 가는게 맞는가 ?
	
	@Autowired
	FavItemDao favItemDao;
	@Autowired
	MemberDao memberDao;
	@Autowired
	FavSellerDao favSellerDao;
	@Autowired
	BasketDao bastketDao;
	@Autowired
	OrderItemDao orderItemDao;
	
	public Member getMember(String uid) { 
		
		return memberDao.getFromUid(uid);
		
	}

	public List<FavItemView> getFiViewList(String uid) {
		
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavItemView> filist = favItemDao.getViewList(memberid);
		
		if(filist.isEmpty())
			filist=null;
		
		return filist;
	}
	
	public List<FavSellerView> getFarmViewList(String uid) {
		
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		List<FavSellerView> fslist = favSellerDao.getFarmViewList(memberid);
		
		if(fslist.isEmpty())
			fslist=null;
		
		return fslist;
	}
	
	public int getBasketCount(String uid) {
		
		Member member = memberDao.getFromUid(uid);
		int memberid = member.getId();
		
		Integer bcount = bastketDao.getCountToMemer(memberid);
		if(bcount==null)
			bcount=0;
		
		return bcount;
	}

	public int getOrderItemCount(String uid) {

		List<SimpleCountView> colist = orderItemDao.getCount(uid);
		int total = 0;
		System.out.println(colist);
		for(SimpleCountView c : colist) {
			if(c.getElement()=="배송중"||c.getElement()=="입금대기"||c.getElement()=="입금확인")
				total+=c.getCount();
		}
		
		return total;
	}



}
