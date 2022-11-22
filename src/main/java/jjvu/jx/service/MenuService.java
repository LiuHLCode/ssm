package jjvu.jx.service;

import jjvu.jx.domain.Max_Menu;
import jjvu.jx.domain.Min_Menu;

import java.util.List;
import java.util.Map;



public interface MenuService {
	public List<Max_Menu> findAllMenu();

	public Map addMaxMenu(Max_Menu max_Menu);

	public void deleteMenu(Integer max_id);

	public Max_Menu findMeunById(Integer max_id);

	public Map editMenu(Max_Menu max_Menu);

	public List<Min_Menu> findAllMinMenu(Integer max_id);

	public Map addMinMenu(Min_Menu min_Menu);

	public void deleteMinMenu(Integer min_id);

	public Min_Menu findMinMeunById(Integer min_id);

	public Map editMinMenu(Min_Menu min_Menu);


	
	

}
