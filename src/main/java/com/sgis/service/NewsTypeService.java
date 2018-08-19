
package com.sgis.service;
import java.util.List;

import com.sgis.entity.NewsType;

public interface NewsTypeService {

	/**
	 * 根据用户 fatherId 获取新闻列表
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<NewsType> getNewsTypeByFatherId(String id) throws Exception;
	
	
	
	/**
	 * 根据用户 id 获取用户信息
	 * @param newsTypeId
	 * @return
	 * @throws Exception
	 */
	public NewsType getNewsTypeById(String newsTypeId) throws Exception;
	
	/**
	 * 添加新闻类别信息，
	 * @param NewsTypeController

	 * @throws Exception
	 */
	public void addNewsType(NewsType newsType) throws Exception;
	
	/**
	 * 删除
	 * @param id
	 * @throws Exception
	 */
	public void delNewsType(String id) throws Exception;
	
	/**
	 * 修改账号信息 （即修改 NewsType 信息）
	 * @param NewsTypeController
	 * @throws Exception
	 */
	public void updateNewsType(NewsType newsType) throws Exception;



	public List<NewsType> getAll();
	
}