package com.farm.web.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FavItemDao {

	@Insert("insert into FavItem(itemId,memberId) values(#{itemId},#{userId})")
	int insert(int itemId, int userId);
}
