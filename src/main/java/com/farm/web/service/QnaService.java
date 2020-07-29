package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.ItemDao;
import com.farm.web.dao.ItemQnADao;
import com.farm.web.dao.MemberDao;
import com.farm.web.entity.Item;
import com.farm.web.entity.DTO.ItemQnAListView;

@Service
public class QnaService {
	
	@Autowired
	private ItemDao itemDao;
	@Autowired
	private ItemQnADao itemQnADao;
	@Autowired
	private MemberDao memberDao;
	
	public List<ItemQnAListView> getQnAList(Integer page, String query, String field){

		int offset = (page-1)*10; // 1-> 0, 2-> 10, 3-> 20 이 되게 만들어야한다.
		int size = 10;
		int id = 1;
		
	  return itemQnADao.getList(offset, size, id, page, query, field);
	}
	
	public List<Item> getItemList(){
		int id= 1;
		return itemDao.getList2(id);
	}
	
	
	
}
