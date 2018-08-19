package com.sgis.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.Dictionary;

@Transactional
@Component(value="dictionaryDao")
public interface DictionaryDao {

	
	public void addDictionary(@Param("dictionary")Dictionary dictionary) throws Exception;
	
	public Dictionary getDictionaryById(@Param("id")String id) throws Exception;
	
	public void delDictionary(@Param("id")String id) throws Exception;
	
	public void updateDictionary(@Param("dictionary")Dictionary dictionary) throws Exception;
	
	public List<Dictionary> getDictionary(@Param("dictionary")Dictionary dictionary) throws Exception;
}
