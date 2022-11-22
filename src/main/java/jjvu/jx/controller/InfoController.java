package jjvu.jx.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jjvu.jx.domain.Info;
import jjvu.jx.domain.Max_Menu;
import jjvu.jx.domain.Min_Menu;
import jjvu.jx.service.InfoService;
import jjvu.jx.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class InfoController {
	@Autowired
	private MenuService menuService;
	@Autowired
	private InfoService infoService;
	@RequestMapping("/toAddInfo")
	public String toAddInfo(Model model) {
		List<Max_Menu> mList= menuService.findAllMenu();
		model.addAttribute("mList", mList);
		return "admin/addInfo";
	}
	@RequestMapping("/addInfo")
	public String addInfo(Info info) {
		info.setHits(0);
		infoService.addInfo(info);
		return "redirect:manageInfo";
	}
	@RequestMapping("/manageInfo")
	public String manageInfo(Model model) {
		List<Info> iList = infoService.findInfo();
		model.addAttribute("iList", iList);
		return "admin/manageInfo";
	}
	@RequestMapping(value = "/delInfo")
	public String delInfo(Integer[] ids) {
		infoService.delInfo(ids);
		return "redirect:manageInfo";
	}
	@RequestMapping(value="/editInfo")
	public String toEditInfo(Integer i_id,Model model){
		Info info=infoService.findInfoById(i_id);
		model.addAttribute("info", info);
		List<Max_Menu> mList= menuService.findAllMenu();
		model.addAttribute("mList", mList);
		int maxMenuid = info.getMaxid();
		Max_Menu maxMenu= menuService.findMeunById(maxMenuid);
		model.addAttribute("maxname",maxMenu.getMax_name() );
		int minMenuid = info.getMinid();
		Min_Menu minMenu= menuService.findMinMeunById(minMenuid);
		model.addAttribute("minname",minMenu.getMin_name());
		return "admin/editInfo";
	}
	@RequestMapping(value="/editInfos")
	public String editInfo(Info info,Model model){
		Map map =  new HashMap();
		map = infoService.editInfo(info);
		if(map != null && map.size() > 0){
			model.addAttribute("info", info);
			model.addAttribute("map", map);
			int maxMenuid = info.getMaxid();
			Max_Menu maxMenu= menuService.findMeunById(maxMenuid);
			model.addAttribute("maxname",maxMenu.getMax_name() );
			int minMenuid = info.getMinid();
			Min_Menu minMenu= menuService.findMinMeunById(minMenuid);
			model.addAttribute("minname",minMenu.getMin_name());
			return "admin/editInfo";
		}
		return "redirect:manageInfo";
	}

}
