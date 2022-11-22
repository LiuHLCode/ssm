package jjvu.jx.controller;

import java.util.ArrayList;
import java.util.List;


import jjvu.jx.domain.Info;
import jjvu.jx.domain.Max_Menu;
import jjvu.jx.domain.PageBean;
import jjvu.jx.service.InfoService;
import jjvu.jx.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@Autowired
	private MenuService menuService;
	@Autowired
	private InfoService infoService;
	@RequestMapping("/toIndex")
	public String toIndex(Model model) {
		List<Max_Menu> mList = menuService.findAllMenu();
		model.addAttribute("mList", mList);
		
		List<Info> list3 = new ArrayList<Info>();
		list3 = infoService.findInfoByMaxId(3);
		model.addAttribute("list3", list3);
		List<Info> list4 = new ArrayList<Info>();
		list4 = infoService.findInfoByMaxId(4);
		model.addAttribute("list4", list4);
		
		List<Info> list1 = new ArrayList<Info>();
		list1 = infoService.findInfoByMaxId(1);
		model.addAttribute("list1", list1);
		List<Info> list2 = new ArrayList<Info>();
		list2 = infoService.findInfoByMaxId(2);
		model.addAttribute("list2", list2);
		return "index";
	}
	@RequestMapping("/allnews")
	public String allNews(Integer pc,String menuname,Integer max_id,Integer min_id,Model model) {
		List<Max_Menu> mList = menuService.findAllMenu();
		model.addAttribute("mList", mList);
		List<Info> list = new ArrayList<Info>();
//		list = infoService.findAllMenu(max_id,min_id);
//		model.addAttribute("infoList", list);
		model.addAttribute("max_id", max_id);
		model.addAttribute("min_id", min_id);
		List<Info> list3 = new ArrayList<Info>();
		list3 = infoService.findInfoByMaxId(3);
		model.addAttribute("list3", list3);
		List<Info> list4 = new ArrayList<Info>();
		list4 = infoService.findInfoByMaxId(4);
		model.addAttribute("list4", list4);
		model.addAttribute("menuname", menuname);
		
		int pagesize= 5;//一次取出5条记录
		if(pc == null ) {
			pc=1;
		}
		int currPageCode  = pc;//allnew带过来的pc值 当前页码
		PageBean<Info> pb = new PageBean();
		pb = infoService.fy(pagesize,currPageCode,max_id,min_id);
		model.addAttribute("pb",pb);
		model.addAttribute("infoList", pb.getDatas());
		return "allnews";
	}
	@RequestMapping(value ="/shownews")
	public String shownews(Integer i_id,Model model) {
		List<Max_Menu> mList = menuService.findAllMenu();
		model.addAttribute("mList", mList);
		Info info = new Info();
		info = infoService.findInfoById(i_id);
		model.addAttribute("info", info);
		
		List<Info> list3 = new ArrayList<Info>();
		list3 = infoService.findInfoByMaxId(3);
		model.addAttribute("list3", list3);
		List<Info> list4 = new ArrayList<Info>();
		list4 = infoService.findInfoByMaxId(4);
		model.addAttribute("list4", list4);
		
		
		return "shownews";
	}
	
}
