package com.farm.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.farm.web.entity.BasketView;

@Mapper
public interface BasketDao {

	@Select("select * from BasketView where memberId = #{memberId}")
	List<BasketView> getList(int memberId);

	@Update("update Basket set ${column} = #{value} where id = #{id}")
	int update(int id, String column, Object value);

	@Insert("insert into Basket(itemId,memberID,qty) values(#{itemId},#{memberId},#{qty})")
	int insert(int itemId, int memberId, int qty);

	@Delete("delete from Basket where id in (${List})")
	int delList(String idList);

	//지욱
	@Select("SELECT count(*) count FROM Basket where memberId = ${memberId}")
	Integer getCount(int memberId);
}
