package jjvu.jx.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jjvu.jx.domain.Info;
import jjvu.jx.domain.InfoPage;
import jjvu.jx.domain.PageBean;
import jjvu.jx.mapper.InfoDao;
import jjvu.jx.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
;
@Service
public class InfoServiceImpl implements InfoService {
	@Autowired
	private InfoDao infoDao;
	@Override
	public List<Info> findAllMenu(Integer max_id, Integer min_id) {
		List<Info> list = new ArrayList<Info>();
		if(max_id != null){
			list = infoDao.findAllMaxMenu(max_id);
		}
		if(min_id != null){
			list = infoDao.findAllMinMenu(min_id);
		}
		return list;
	}
	@Override
	public Info findInfoById(Integer i_id) {
		infoDao.updateInfoHits(i_id);
		return infoDao.findInfoById(i_id);
	}
	@Override
	public List<Info> findInfoByMaxId(int i) {
		return infoDao.findInfoByMaxId(i);
	}
	@Override
	public void addInfo(Info info) {
		infoDao.addInfo(info);
	}
	@Override
	public List<Info> findInfo() {
		return infoDao.findInfo();
	}
	@Override
	public void delInfo(Integer[] ids) {
		infoDao.delInfo(ids);
	}
	@Override
	public Map editInfo(Info info) {
		Map map =  new HashMap();
		Info info1 = infoDao.findInfoByName(info);
		if (info1 != null) {
			map.put("msg", "标题已存在");
		}else{
			infoDao.editInfo(info);
			map = null;
		}	
		return map;
	}
	@Override
	public PageBean<Info> fy(int pagesize, int currPageCode, Integer max_id, Integer min_id) {
		PageBean<Info> pb =new PageBean();
		//每页记录数
				pb.setPagesize(pagesize);//5
				//当前页
				int pc =0;
				if(currPageCode == 0) {
					pc = 1;
				}else {
					pc = currPageCode;
				}
				pb.setCurrPageCode(pc); 
				int totalRecord = 0;
				if(max_id != null){
					totalRecord = infoDao.findTotalRecordMax(max_id);
				}
				if(min_id != null){
					totalRecord = infoDao.findTotalRecordMin(min_id);
				}
				pb.setTotalRecord(totalRecord);
				pb.setTotalPage((pb.getTotalRecord()+pb.getPagesize()-1)/pb.getPagesize());
				//每页记录数
				List<Info> list = new ArrayList();
				InfoPage infopa = new InfoPage();
				if(max_id != null){
					infopa.setId(max_id);
				}
				if(min_id != null){
					infopa.setId(min_id);
				}	
				infopa.setPc((currPageCode-1)*pagesize);
				infopa.setPagesize(pagesize);
				list=infoDao.findInfos(infopa);
				pb.setDatas(list);
				return pb;
	}
	

}
