package com.welfare.entity;

import java.util.List;

/**
 * 二级菜单
 * @author 王飞
 *
 */
public class NvaListTitle {
	private Integer id;
	private String text;
	private List<NvaListList> nvaListList;
	public List<NvaListList> getNvaListList() {
		return nvaListList;
	}
	public void setNvaListList(List<NvaListList> nvaListList) {
		this.nvaListList = nvaListList;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
}
