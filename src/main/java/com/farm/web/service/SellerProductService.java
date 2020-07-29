package com.farm.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.CategoryDao;
import com.farm.web.dao.ItemDao;
import com.farm.web.entity.SellerCategoryCountView;
import com.farm.web.entity.SellerProductView;

@Service
public class SellerProductService {

	@Autowired
	private ItemDao itemDao;
	
	@Autowired
	private CategoryDao categoryDao;

	public List<SellerProductView> getList(String query, String field, String category,Integer page){
        
		int offset = (page-1)*5; //1->0, 2->10, 3->20
        int size = 5;

        return itemDao.getSellerProductList(query,field,category,offset,size);
     }
	
	public List<SellerCategoryCountView> getCountList(){
		int count = 0;
		List<SellerCategoryCountView> list = categoryDao.getSellerProductCountList();
		
		for(SellerCategoryCountView c : list)
			count+=c.getCount();

		SellerCategoryCountView scv=new SellerCategoryCountView(1,"전체상품",count);
		list.add(0,scv);

        return list;
     }
	
	
	public int delete(int id){
        
        return itemDao.SellerProductDelete(id);
     }

	public int updatePub(int id) {
		
		SellerProductView spView = itemDao.getSellerProduct(id);
		boolean pub = !spView.getPub();
		
		return itemDao.SellerProductUpdatePub(id,pub);
	}


}
