package jjvu.jx.service;

import jjvu.jx.domain.Info;
import jjvu.jx.domain.PageBean;

import java.util.List;
import java.util.Map;


public interface InfoService {

	List<Info> findAllMenu(Integer max_id, Integer min_id);

	Info findInfoById(Integer i_id);

	List<Info> findInfoByMaxId(int i);

	void addInfo(Info info);

	List<Info> findInfo();

	void delInfo(Integer[] ids);

	Map editInfo(Info info);

	PageBean<Info> fy(int pagesize, int currPageCode, Integer max_id, Integer min_id);

}
