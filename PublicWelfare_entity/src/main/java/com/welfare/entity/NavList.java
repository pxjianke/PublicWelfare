package com.welfare.entity;

import java.util.Date;
import java.util.List;
/**
 * 一级菜单
 * @author 王飞
 *
 */
public class NavList {
	private Integer id;
	private String text;
	private Date createTime;
	private List<NvaListTitle> nvaListTitle;
	
	
	public List<NvaListTitle> getNvaListTitle() {
		return nvaListTitle;
	}
	public void setNvaListTitle(List<NvaListTitle> nvaListTitle) {
		this.nvaListTitle = nvaListTitle;
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
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
}
