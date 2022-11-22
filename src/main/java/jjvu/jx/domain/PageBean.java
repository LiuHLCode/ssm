package jjvu.jx.domain;

import java.util.List;

public class PageBean<T> {
	private List<T> datas;//当前页要显示的记录
	private int totalRecord;//总记录数
	private int currPageCode;//当前页码
	private int pagesize;//每页记录数
	private int totalPage;//总页数
	public List<T> getDatas() {
		return datas;
	}
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getCurrPageCode() {
		return currPageCode;
	}
	public void setCurrPageCode(int currPageCode) {
		this.currPageCode = currPageCode;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	@Override
	public String toString() {
		return "PageBean [datas=" + datas + ", totalRecord=" + totalRecord + ", currPageCode=" + currPageCode
				+ ", pagesize=" + pagesize + ", totalPage=" + totalPage + "]";
	}
	
}