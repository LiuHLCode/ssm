package jjvu.jx.domain;

public class Min_Menu {
	private Integer min_id;
	private String min_name;
	private Integer mm_id;
	
	public Integer getMin_id() {
		return min_id;
	}
	public void setMin_id(Integer min_id) {
		this.min_id = min_id;
	}
	public String getMin_name() {
		return min_name;
	}
	public void setMin_name(String min_name) {
		this.min_name = min_name;
	}
	public Integer getMm_id() {
		return mm_id;
	}
	public void setMm_id(Integer mm_id) {
		this.mm_id = mm_id;
	}
	@Override
	public String toString() {
		return "Min_Menu [min_id=" + min_id + ", min_name=" + min_name + ", mm_id=" + mm_id + "]";
	}
	
	
}
