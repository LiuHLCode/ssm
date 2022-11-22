package jjvu.jx.domain;

public class Info {
	private int i_id;
	private String title;
	private String author;
	private String adddate;
	private int hits;
	private String content;
	private int maxid;
	private int minid;
	public int getI_id() {
		return i_id;
	}
	public void setI_id(int i_id) {
		this.i_id = i_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAdddate() {
		return adddate;
	}
	public void setAdddate(String adddate) {
		this.adddate = adddate;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMaxid() {
		return maxid;
	}
	public void setMaxid(int maxid) {
		this.maxid = maxid;
	}
	public int getMinid() {
		return minid;
	}
	public void setMinid(int minid) {
		this.minid = minid;
	}
	@Override
	public String toString() {
		return "Info [i_id=" + i_id + ", title=" + title + ", author=" + author + ", adddate=" + adddate + ", hits="
				+ hits + ", content=" + content + ", maxid=" + maxid + ", minid=" + minid + "]";
	}
	
	

}
