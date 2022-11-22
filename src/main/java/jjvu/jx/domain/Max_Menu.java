package jjvu.jx.domain;

import java.util.List;

public class Max_Menu {
	private Integer max_id;
	private String max_name;
	private List<Min_Menu> mList;
	public Integer getMax_id() {
		return max_id;
	}
	public void setMax_id(Integer max_id) {
		this.max_id = max_id;
	}
	public String getMax_name() {
		return max_name;
	}
	public void setMax_name(String max_name) {
		this.max_name = max_name;
	}
	public List<Min_Menu> getmList() {
		return mList;
	}
	public void setmList(List<Min_Menu> mList) {
		this.mList = mList;
	}
	@Override
	public String toString() {
		return "Max_Menu [max_id=" + max_id + ", max_name=" + max_name + ", mList=" + mList + "]";
	}
	
}
