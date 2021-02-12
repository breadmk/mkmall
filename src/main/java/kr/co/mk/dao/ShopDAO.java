package kr.co.mk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.mk.vo.GoodsViewVo;

public interface ShopDAO {
	
	//1차분류
	public List<GoodsViewVo> list_first(@Param("c") int cateCode, int cateCodeRef);
	//2차분류
	public List<GoodsViewVo> list_second(@Param("c") int cateCode);
	
}
