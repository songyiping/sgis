
package com.sgis.service;
import java.util.List;

import com.sgis.entity.Dictionary;
public interface DictionaryService {

	
	public Dictionary getDictionaryById(String id) throws Exception;
	
	public void addDictionary(Dictionary dictionary) throws Exception;
	
	public void delDictionary(String id) throws Exception;
	
	public void updateDictionary(Dictionary dictionary) throws Exception;

	public List<Dictionary> getDictionary(Dictionary dictionary) throws Exception;
	
}