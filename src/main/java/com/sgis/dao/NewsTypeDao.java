package com.sgis.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


import com.sgis.entity.NewsType;

@Transactional
@Component(value="newsTypeDao")
public interface NewsTypeDao {

	/**
	 * 添加 用户（NewsType）信息
	 */
	public void addNewsType(NewsType newsType) throws Exception;
	
	/**
	 * 根据 id 查找用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public NewsType getNewsTypeById(String id) throws Exception;
	
	/**
	 * 删除账号（即删除 NewsType）
	 * @param id
	 * @throws Exception
	 */
	public void delNewsType(String id) throws Exception;
	
	/**
	 * 修改账号 （即修改 NewsType）
	 * @param id
	 * @throws Exception
	 */
	public void updateNewsType(NewsType newsType) throws Exception;

	public List<NewsType> getNewsTypeByFatherId(@Param("fatherId")String fatherId)throws Exception;

	public List<NewsType> getAll();
	
	
	
}
