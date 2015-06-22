package kr.co.cooks.vo;

import java.sql.Timestamp;

public class FreeVO {
	private int free_Num;
	private String id;
	private String free_Title;
	private String free_Content;
	private Timestamp free_Date;
	private int free_Hit;
	
	@Override
	public String toString() {
		return "FreeVO [free_Num=" + free_Num + ", id=" + id + ", free_Title="
				+ free_Title + ", free_Content=" + free_Content
				+ ", free_Date=" + free_Date + ", free_Hit=" + free_Hit + "]";
	}
	
	
	public int getFree_Num() {
		return free_Num;
	}
	public void setFree_Num(int free_Num) {
		this.free_Num = free_Num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFree_Title() {
		return free_Title;
	}
	public void setFree_Title(String free_Title) {
		this.free_Title = free_Title;
	}
	public String getFree_Content() {
		return free_Content;
	}
	public void setFree_Content(String free_Content) {
		this.free_Content = free_Content;
	}
	public Timestamp getFree_Date() {
		return free_Date;
	}
	public void setFree_Date(Timestamp free_Date) {
		this.free_Date = free_Date;
	}
	public int getFree_Hit() {
		return free_Hit;
	}
	public void setFree_Hit(int free_Hit) {
		this.free_Hit = free_Hit;
	}
	
	
	
	
}