package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.BasketDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.entity.Basket;
import com.farm.web.entity.BasketView;
import com.farm.web.entity.Member;

@Service
public class BasketService {
	@Autowired
	BasketDao basketDao;
	@Autowired
	MemberDao memberDao;

	public int contain(int itemId, int qty, String uName) {
		Member member = memberDao.getFromUid(uName);
		int memberId = member.getId();
		
	
		
		boolean isContain = false;
		
		List<BasketView> basketList = basketDao.getList(memberId);
		for(Basket b : basketList) {
			if(itemId == b.getItemId()) {
		
				isContain = true;
			};
		}
		
		int res = 0;
		if(isContain) {
			res = 2;
		}
		else {
			res = basketDao.insert(itemId,memberId,qty);
		}
		
		return res;
	}

	public int append(int itemId, int qty, String uName) {
		Member member = memberDao.getFromUid(uName);
		int memberId = member.getId();
		
		int cid = 0;
		int cQty = 0;
		
		List<BasketView> basketList = basketDao.getList(memberId);
		for(Basket b : basketList) {
			if(itemId == b.getItemId()) {
				cid = b.getId();
				cQty = b.getQty();
			}
		}
		
		int res = basketDao.update(cid,"qty",cQty+qty);
		
		return res;
	}

	public List<BasketView> getList(String uName) {
		Member member = memberDao.getFromUid(uName);
		int memberId = member.getId();
		
		List<BasketView> bl = basketDao.getList(memberId);
		
		return bl;
	}

	public int delList(int[] selectRows) {
		String idList = "";
		for(int i : selectRows)
			idList += i+",";
		
		idList = idList.substring(0, idList.length()-1);
		
		return basketDao.delList(idList);
	}

	public int update(int id, int qty) {
		return basketDao.update(id, "qty", qty);
	}


}
