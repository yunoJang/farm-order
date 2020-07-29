package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.Item;
import com.farm.web.entity.ItemView;
import com.farm.web.entity.SellerCategoryCountView;
import com.farm.web.entity.SellerProductView;

@Mapper
public interface ItemDao {
	
	/******************************************윤호************************************************************/
	@Select("select * from ItemView where ${field} like '%${query}%' and catgPName like '%${catg}%' LIMIT #{offset},#{size}")
	List<ItemView> getList(int size, int offset, String field, String query, String catg);
	
	/****수환***/
	
	@Select("select distinct name from Item where sellerId=${id}")
	List<Item> getList2(int id);
	/****수환 끝***/	
	
	@Select("select * from Item where id=${id}")
	Item get(int id);
	
	@Insert("")
	int insert();
	
	@Update("")
	int update();
	
	@Delete("")
	int delete();

	@Select("select count(*) from ItemView where ${field} like '%${query}%' and catgPName like '%${catg}%'")
	int getCount(String query, String field, String catg);

	@Update("update Item set isdel = 1 where id in (${selectRows})")
	int deleteSelectRows(String selectRows);
	/******************************************************************************************************/
	/*******************************************지욱********************************************************/
	@Select("SELECT * FROM SellerProductView where isDel=0 and uid='seller' and ${field} LIKE '%${query}%' and firstcatg Like '%${category}%'"
			+ "LIMIT ${size} OFFSET ${offset}")
	List<SellerProductView> getSellerProductList(String query, String field,String category,
			@Param("offset") int offset, @Param("size") int size);
	
	@Select("SELECT * FROM SellerProductView WHERE id=#{id}") 
	SellerProductView getSellerProduct(int id);
	
	@Update("UPDATE Item SET isdel=1 WHERE id=#{id}")
	int SellerProductDelete(int id);
	
	@Update("UPDATE Item SET pub=${pub} WHERE id=${id}")
	int SellerProductUpdatePub(int id,boolean pub);
	
	/******************************************************************************************************/
	


	


}