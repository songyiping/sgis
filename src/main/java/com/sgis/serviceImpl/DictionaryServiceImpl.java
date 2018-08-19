package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.DictionaryDao;
import com.sgis.entity.Dictionary;
import com.sgis.service.DictionaryService;

@Transactional
@Service(value="dictionaryService")
public class DictionaryServiceImpl implements DictionaryService {

	@Resource(name="dictionaryDao")
	private DictionaryDao dictionaryDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */

	public Dictionary getDictionaryById(String id) throws Exception {
		return dictionaryDao.getDictionaryById(id);
	}
	
	

	public void addDictionary(Dictionary dictionary) throws Exception {
		dictionaryDao.addDictionary(dictionary);
	}


	
	public void delDictionary(String id) throws Exception {
		dictionaryDao.delDictionary(id);
	}

	
	
	public void updateDictionary(Dictionary dictionary) throws Exception {
		dictionaryDao.updateDictionary(dictionary);
	}


	
	public List<Dictionary> getDictionary(Dictionary dictionary) throws Exception {
		return dictionaryDao.getDictionary(dictionary);
		
	}


}
