package kr.co.cooks.vo;

import java.sql.Timestamp;

public class FreeCommentVO {
	private int fcomment_Num;
	private String id;
	private String fcomment_Content;
	private Timestamp fcomment_Date;
	private int free_Num;
	public int getFcomment_Num() {
		return fcomment_Num;
	}
	public void setFcomment_Num(int fcomment_Num) {
		this.fcomment_Num = fcomment_Num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFcomment_Content() {
		return fcomment_Content;
	}
	public void setFcomment_Content(String fcomment_Content) {
		this.fcomment_Content = fcomment_Content;
	}
	public Timestamp getFcomment_Date() {
		return fcomment_Date;
	}
	public void setFcomment_Date(Timestamp fcomment_Date) {
		this.fcomment_Date = fcomment_Date;
	}
	public int getFree_Num() {
		return free_Num;
	}
	public void setFree_Num(int free_Num) {
		this.free_Num = free_Num;
	}
	@Override
	public String toString() {
		return "FreeCommentVO [fcomment_Num=" + fcomment_Num + ", id=" + id
				+ ", fcomment_Content=" + fcomment_Content + ", fcomment_Date="
				+ fcomment_Date + ", free_Num=" + free_Num + "]";
	}
	
}
