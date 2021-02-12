package kr.co.mk.dao;

import java.util.List;

import kr.co.mk.vo.GoodsViewVo;

public interface ShopDAO {

	public List<GoodsViewVo> list(int cateCode);
	
}
