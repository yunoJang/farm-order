package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.OrderItem;
import com.farm.web.entity.OrderItemView;

@Mapper
public interface OrderItemDao {

	@Select("select * from OrderItemView"
			+ "where iSellerId = ${id} and ${field} like '%${query}%' LIMIT #{size} OFFSET ${offset}")
	List<OrderItemView> getList(@Param("offset") int offset, @Param("size") int size, int id, int page, String query, String field);
	
	@Select("select * from OrderItem where id=${id}")
	OrderItem get(int id);

	@Insert("")
	int insert();
	
	@Update("")
	int update();
	
	@Delete("")
	int delete();
	
	//지욱
	@Select("select * from OrderItemView where mUid='${uid}'")
	List<OrderItemView> getListToUid(String uid);

	
}
