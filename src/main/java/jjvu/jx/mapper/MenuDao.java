package jjvu.jx.mapper;

import jjvu.jx.domain.Max_Menu;
import jjvu.jx.domain.Min_Menu;

import java.util.List;
import java.util.Map;


public interface MenuDao {
	
	public List<Max_Menu> findAllMenu();

	public Max_Menu findMaxMenuByName(Max_Menu max_Menu);

	public void addMaxMenu(Max_Menu max_Menu);

	public void deleteMenu(Integer max_id);

	public Max_Menu findMeunById(Integer max_id);

	public void editMenu(Max_Menu max_Menu);

	public Max_Menu findMaxMenuByMaxName(Max_Menu max_Menu);

	public List<Min_Menu> findAllMinMenu(Integer max_id);

	public Min_Menu findMinMenuById(Min_Menu min_Menu);

	public void addMinMenu(Min_Menu min_Menu);

	public void deleteMinMenu(Integer min_id);

	public Min_Menu findMinMeunById(Integer min_id);

	public Min_Menu findMinMenuByMaxName(Min_Menu min_Menu);

	public void editMinMenu(Min_Menu min_Menu);
}
