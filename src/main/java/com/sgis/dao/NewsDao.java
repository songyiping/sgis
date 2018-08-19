package com.sgis.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.News;

@Transactional
@Component(value="newsDao")
public interface NewsDao {

	/**
	 * 添加 用户（News）信息
	 */
	public void addNews(@Param("news") News news) throws Exception;
	/**
	 * 根据ID获得（News）信息
	 */
	public News getNewsById(@Param("id")String id) throws Exception;
	/**
	 * 更新（News）信息
	 */
	public void updateNews(@Param("news")News news) throws Exception;

	/**
	 * 根据 news|chooseNum|pageSize 查找分页信息
	 * @param news对象    chooseNum 页码  pageSize 每页大小
	 * @return List<news> 新闻列表
	 * @throws Exception
	 */

	public List<News> getNewsList(@Param("news")News news,@Param("chooseNum") int chooseNum,@Param("pageSize") int pageSize)throws Exception;
	/**
	 * 根据 news 查找新闻条目
	 * @param news对象
	 * @return int 数量
	 * @throws Exception
	 */
	public int getNewsCount(@Param("news") News news);	
	
	public News getDownNews(@Param("newsTypeId")String newsTypeId,@Param("id")String id)throws Exception;
	
	public News getUpNews  (@Param("newsTypeId")String newsTypeId,@Param("id")String id)throws Exception;
	
	
}
