package jjvu.jx.domain;

public class InfoPage {
	private int id;
	private int pagesize;
	private int pc;
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "InfoPage [id=" + id + ", pagesize=" + pagesize + ", pc=" + pc + "]";
	}
	
	
}
