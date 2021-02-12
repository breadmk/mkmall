package kr.co.mk.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mk.dao.ShopDAO;
import kr.co.mk.vo.GoodsViewVo;

@Controller
@RequestMapping("/shop/**")
public class ShopController {
	
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/list")
	public String list(@RequestParam("c") int cateCode, @RequestParam("l") int level, Model model) {
		ShopDAO dao =  sqlSession.getMapper(ShopDAO.class);
		
		List<GoodsViewVo> list = dao.list(cateCode);
		model.addAttribute("list",list);
		return "/shop/list";
	}
}
