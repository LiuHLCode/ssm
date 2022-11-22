package jjvu.jx.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import jjvu.jx.domain.Max_Menu;
import jjvu.jx.domain.Min_Menu;
import jjvu.jx.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	@RequestMapping(value="/ManageMenu")
	public String manageMenu(Model model){
		List<Max_Menu> list= menuService.findAllMenu();
		model.addAttribute("list", list);
		return "admin/manageMenu";
	}
	@RequestMapping(value="/addMaxMenu")
	public String addMaxMenu(Max_Menu max_Menu,Model model){
		Map map = new HashMap();
		map = menuService.addMaxMenu(max_Menu);
		if(map != null && map.size() > 0) {
			model.addAttribute("map", map);
			model.addAttribute("max_Menu", max_Menu);
			return "forward:ManageMenu";
		}
		return "redirect:ManageMenu";
	}
	@RequestMapping(value="/deleteMenu")
	public String deleteMenu(Integer max_id){
		menuService.deleteMenu(max_id);
		return "redirect:ManageMenu";
	}
	@RequestMapping(value="/editMenu",method=RequestMethod.GET)
	public String toEditMenu(Integer max_id,Model model){
		Max_Menu max_Menu=menuService.findMeunById(max_id);
		model.addAttribute("max_Menu", max_Menu);
		return "admin/editMenu";
	}
	@RequestMapping(value="/editMenu",method=RequestMethod.POST)
	public String editMenu(Max_Menu max_Menu,Model model){
		Map map =  new HashMap();
		map = menuService.editMenu(max_Menu);
		if(map != null && map.size() > 0){
			model.addAttribute("max_Menu", max_Menu);
			model.addAttribute("map", map);
			return "admin/editMenu";
		}
		return "redirect:ManageMenu";
	}
	@RequestMapping(value="/manageMinMenu")
	public String manageMinMenu(Integer max_id,Model model){
		List<Min_Menu> list = menuService.findAllMinMenu(max_id);
		model.addAttribute("list", list);
		model.addAttribute("mm_id", max_id);
		return "admin/manageMenu2";
	}
	@RequestMapping(value="/addMinMenu")
	public String addMinMenu(Min_Menu min_Menu,Model model){
		Map map = new HashMap();
		map = menuService.addMinMenu(min_Menu);
		if(map != null && map.size() > 0) {
			model.addAttribute("map", map);
			model.addAttribute("min_Menu", min_Menu);
		}
		List<Min_Menu> list = menuService.findAllMinMenu(min_Menu.getMm_id());
		model.addAttribute("list", list);
		model.addAttribute("mm_id", min_Menu.getMm_id());
		return "admin/manageMenu2";
	}
	@RequestMapping(value="/deleteMinMenu")
	public String deleteMinMenu(Integer min_id,Integer max_id,Model model){
		menuService.deleteMinMenu(min_id);
		model.addAttribute("max_id", max_id);
		return "redirect:manageMinMenu";
	}
	@RequestMapping(value="/editMinMenu",method=RequestMethod.GET)
	public String toEditMinMenu(Integer min_id,Model model){
		Min_Menu min_Menu=menuService.findMinMeunById(min_id);
		model.addAttribute("min_Menu", min_Menu);
		System.out.println(min_Menu);
		return "admin/editMinMenu";
	}
	@RequestMapping(value="/editMinMenu",method=RequestMethod.POST)
	public String editMinMenu(Min_Menu min_Menu,Model model){
		Map map =  new HashMap();
		map = menuService.editMinMenu(min_Menu);
		if(map != null && map.size() > 0){
			model.addAttribute("min_Menu", min_Menu);
			model.addAttribute("map", map);
			return "admin/editMinMenu";
		}
		model.addAttribute("max_id", min_Menu.getMm_id());
		return "redirect:manageMinMenu";
	}
	@RequestMapping(value="/findMinMenu")
	public @ResponseBody List<Min_Menu> findMinMenu(Integer max_id){
		return menuService.findAllMinMenu(max_id);
	}
}
