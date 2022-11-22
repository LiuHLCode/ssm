package jjvu.jx.mapper;

import jjvu.jx.domain.Info;
import jjvu.jx.domain.InfoPage;

import java.util.List;

public interface InfoDao {

	public List<Info> findAllMaxMenu(Integer max_id);

	public List<Info> findAllMinMenu(Integer max_id);

	public void updateInfoHits(Integer i_id);

	public Info findInfoById(Integer i_id);

	public List<Info> findInfoByMaxId(int i);

	public void addInfo(Info info);

	public List<Info> findInfo();

	public void delInfo(Integer[] ids);

	public Info findInfoByName(Info info);

	public void editInfo(Info info);

	public int findTotalRecordMax(Integer max_id);

	public int findTotalRecordMin(Integer min_id);

	public List<Info> findInfos(InfoPage infopa);

	
}
