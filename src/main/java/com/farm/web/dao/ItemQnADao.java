package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.farm.web.entity.ItemQnA;
import com.farm.web.entity.DTO.ItemQnAListView;

@Mapper
public interface ItemQnADao {

	@Select("select * from ItemQnAListView "
			+ "where iSellerId = ${id} and ${field} like '%${query}%' LIMIT #{size} OFFSET ${offset}")
	List<ItemQnAListView> getList(@Param("offset") int offset, @Param("size") int size, int id, int page, String query, String field);
	
	@Select("select * from ItemQnA where id=#{id}")
	ItemQnA get(int id);
	
	@Insert("insert into "
			+ "ItemQnA(writerId, itemId, title, content, regDate, image) "
			+ "values(${writerId}, ${itemId}, #{title}, #{content}, #{regDate}, #{image})")
	ItemQnA insert(ItemQnA itemQnA);
	
} 
