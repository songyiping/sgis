
package com.sgis.service;
import java.util.List;

import com.sgis.entity.StatisticalData;
public interface StatisticalDataService {

	
	public StatisticalData getStatisticalDataById(String id) throws Exception;
	
	public void addStatisticalData(StatisticalData statisticalData) throws Exception;
	
	public void delStatisticalData(String id) throws Exception;
	
	public void updateStatisticalData(StatisticalData statisticalData) throws Exception;

	public List<StatisticalData> getStatisticalData(StatisticalData statisticalData) throws Exception;
	
}