package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.SaleItem;

public interface SaleItemMapper {

	@Select("select * from saleitem where saleid=#{saleId}")
	List<SaleItem> list(Integer saleId);

	@Insert("INSERT INTO SALEITEM "
	        + " (saleid, saleitemid, itemid, quantity, updatetime) "
	        + " VALUES (#{sale.saleId}, #{saleItemId}, #{item.id}, #{quantity}, #{updateTime})")
	void insert(SaleItem saleItem);
		
}
