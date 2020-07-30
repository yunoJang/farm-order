package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.OrderItemDao;
import com.farm.web.entity.OrderItemView;

@Service
public class OrderService {

	@Autowired
	OrderItemDao orderItemDao;
	
	public List<OrderItemView> getMemberOIList(String uid){
		
		
		return orderItemDao.getListToUid(uid);
	}
	
}
