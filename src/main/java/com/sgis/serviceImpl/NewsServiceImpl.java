package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.sgis.unit.PageModel;
import com.sgis.dao.NewsDao;
import com.sgis.entity.News;
import com.sgis.service.NewsService;

@Transactional
@Service(value="newsService")
public class NewsServiceImpl implements NewsService {

	@Resource(name="newsDao")
	private NewsDao newsDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	
	public News getNewsById(String id) throws Exception {
		
		return newsDao.getNewsById(id);
	}
	
	
	
	public void addNews(News news) throws Exception {
		newsDao.addNews(news);
	}


	
	public void delNews(News news) throws Exception {
		news.setIsDelete(-1);
		newsDao.updateNews(news);
	}
	
	public void isTop(News news) throws Exception {
		news.setIsTop(news.getIsTop()+1);
		newsDao.updateNews(news);
	}

	public void isNotTop(News news) throws Exception {
		news.setIsTop(0);
		newsDao.updateNews(news);
	}
	
	public void isVisible(News news)throws Exception{
		if(news.getIsVisible() == -1) {
			news.setIsVisible(1);		
		}
		else {
			news.setIsVisible(-1);
		}
		newsDao.updateNews(news);
	}

	
	@Override
	public void updateNews(News news) throws Exception {
		newsDao.updateNews(news);
	}


	
	@Override
	public PageModel getNewsList(News news,int chooseNum,int pageSize) throws Exception {
		List<News> datas; 
		if(chooseNum == 0) {
			datas = newsDao.getNewsList(news, 0, 1);
		}
		else {
			datas = newsDao.getNewsList(news, (chooseNum-1)*pageSize, pageSize);
		}
		 
		PageModel pm = new PageModel();
	
		int totle = newsDao.getNewsCount(news);
		int pageNum = 0;
		if(totle !=0) {
				
			if(totle%pageSize == 0 ) {
				pageNum = totle/pageSize;
			}else {
				pageNum = totle/pageSize+1;
			}
		}
		
		pm.setDatas(datas);
		pm.setTotle(totle);
		pm.setPageNum(pageNum);
		return pm;
	
	}
	@Override
	public News getUpNews(String newsTypeId, String id) throws Exception {
		return newsDao.getUpNews(newsTypeId, id);
	}


	@Override
	public News getDownNews(String newsTypeId, String id) throws Exception {
		return newsDao.getDownNews(newsTypeId, id);
	}
}
