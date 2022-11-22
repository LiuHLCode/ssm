package jjvu.jx.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jjvu.jx.domain.Max_Menu;
import jjvu.jx.domain.Min_Menu;
import jjvu.jx.mapper.MenuDao;
import jjvu.jx.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDao menuDao;
	@Override
	public List<Max_Menu> findAllMenu() {
		return this.menuDao.findAllMenu();
	}
	@Override
	public Map addMaxMenu(Max_Menu max_Menu) {
		Max_Menu max_Menu1 = menuDao.findMaxMenuByName(max_Menu);
		Map map = new HashMap();
		if(max_Menu1 != null) {
			map.put("msg", "账号已被使用");
		}else {
			menuDao.addMaxMenu(max_Menu);
		}
		return map;
	}
	@Override
	public void deleteMenu(Integer max_id) {
		menuDao.deleteMenu(max_id);
	}
	@Override
	public Max_Menu findMeunById(Integer max_id) {
		return menuDao.findMeunById(max_id);
	}
	@Override
	public Map editMenu(Max_Menu max_Menu) {
		Map map =  new HashMap();
		Max_Menu max_Menu1 = menuDao.findMaxMenuByMaxName(max_Menu);
		if (max_Menu1 != null) {
			map.put("msg", "导航菜单栏名称已经存在");
		}else{
			menuDao.editMenu(max_Menu);
			map = null;
		}	
		return map;
	}
	@Override
	public List<Min_Menu> findAllMinMenu(Integer max_id) {
		return menuDao.findAllMinMenu(max_id);
	}
	@Override
	public Map addMinMenu(Min_Menu min_Menu) {
		Min_Menu min_Menu1 = menuDao.findMinMenuById(min_Menu);
		Map map = new HashMap();
		if(min_Menu1 != null) {
			map.put("msg", "下拉菜单已被使用");
		}else {
			menuDao.addMinMenu(min_Menu);
		}
		return map;
	}
	@Override
	public void deleteMinMenu(Integer min_id) {
		menuDao.deleteMinMenu(min_id);	
	}
	@Override
	public Min_Menu findMinMeunById(Integer min_id) {
		return menuDao.findMinMeunById(min_id);
	}
	@Override
	public Map editMinMenu(Min_Menu min_Menu) {
		Map map =  new HashMap();
		Min_Menu min_Menu1 = menuDao.findMinMenuByMaxName(min_Menu);
		if (min_Menu1 != null) {
			map.put("msg", "导航菜单栏名称已经存在");
		}else{
			menuDao.editMinMenu(min_Menu);
			map = null;
		}	
		return map;
	}
	
}
