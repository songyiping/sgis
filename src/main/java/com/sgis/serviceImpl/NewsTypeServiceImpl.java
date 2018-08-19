package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.NewsTypeDao;
import com.sgis.entity.NewsType;
import com.sgis.service.NewsTypeService;

@Transactional
@Service(value="newsTypeService")
public class NewsTypeServiceImpl implements NewsTypeService {

	@Resource(name="newsTypeDao")
	private NewsTypeDao newsTypeDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	
	public NewsType getNewsTypeById(String id) throws Exception {
		return newsTypeDao.getNewsTypeById(id);
	}
	
	
	
	public void addNewsType(NewsType newsType) throws Exception {
		newsTypeDao.addNewsType(newsType);
	}


	
	public void delNewsType(String id) throws Exception {
		newsTypeDao.delNewsType(id);
	}

	

	public void updateNewsType(NewsType newsType) throws Exception {
		newsTypeDao.updateNewsType(newsType);
	}


	
	public List<NewsType> getNewsTypeByFatherId(String id) throws Exception {
		return newsTypeDao.getNewsTypeByFatherId(id);
		
	}


	
	public List<NewsType> getAll() {
		
		return newsTypeDao.getAll();
	}


}
