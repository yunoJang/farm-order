package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.farm.web.entity.FavItem;

@Mapper
public interface FavItemDao {
	
	@Select("select * from FavItem where memberId = #{memberId}")
	List<FavItem> getListTomemberId(int memberId);

	@Insert("insert into FavItem(itemId,memberId) values(#{itemId},#{memberId})")
	int insert(int itemId, int memberId);

	@Delete("delete from FavItem where id=#{id}")
	void delete(int id);
}
