package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.OrderItemDao;
import com.farm.web.entity.OrderItemView;
import com.farm.web.entity.SimpleCountView;

@Service
public class OrderService {

	@Autowired
	OrderItemDao orderItemDao;
	
	public List<OrderItemView> getMemberOIList(String uid){
		
		
		return orderItemDao.getListToUid(uid);
	}
	
	public int cancleOrder(int id){
		String field = "status";
		String query = "주문취소";

		return orderItemDao.updateStatus(id,field,query);
	}
	
	public List<SimpleCountView> getCount(String uid){
		
		return orderItemDao.getCount(uid);
	}
	
}