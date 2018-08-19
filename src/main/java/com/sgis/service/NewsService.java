
package com.sgis.service;

import com.sgis.entity.News;
import com.sgis.unit.PageModel;
public interface NewsService {


	public News getNewsById(String id) throws Exception;
	public void addNews(News news) throws Exception;
	public void updateNews(News news) throws Exception;
	public PageModel getNewsList(News news,int chooseNum,int pageSize)throws Exception;
	public News getUpNews(String newsTypeId, String id) throws Exception;
	public News getDownNews(String newsTypeId, String id) throws Exception;
	public void delNews(News news) throws Exception;
	void isNotTop(News news) throws Exception;
	void isVisible(News news) throws Exception;
	void isTop(News news) throws Exception;
	
}