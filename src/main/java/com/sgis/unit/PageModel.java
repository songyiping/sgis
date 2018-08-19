package com.sgis.unit;

import java.util.List;

/**
 * 分页模板，用于分页存储信息
 * 
 */
public class PageModel {

	//数据总数 
	private int totle;
	
	//分页数量
	private int pageNum;
	
	//数据集合
	private List<?> datas;

	public int getTotle() {
		return totle;
	}

	public void setTotle(int totle) {
		this.totle = totle;
	}

	public List<?> getDatas() {
		return datas;
	}

	public void setDatas(List<?> datas) {
		this.datas = datas;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
}
