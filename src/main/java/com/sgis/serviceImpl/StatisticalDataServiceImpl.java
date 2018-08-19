package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.StatisticalDataDao;
import com.sgis.entity.StatisticalData;
import com.sgis.service.StatisticalDataService;

@Transactional
@Service(value="statisticalDataService")
public class StatisticalDataServiceImpl implements StatisticalDataService {

	@Resource(name="statisticalDataDao")
	private StatisticalDataDao statisticalDataDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	
	public StatisticalData getStatisticalDataById(String id) throws Exception {
		return statisticalDataDao.getStatisticalDataById(id);
	}
	
	
	
	public void addStatisticalData(StatisticalData statisticalData) throws Exception {
		statisticalDataDao.addStatisticalData(statisticalData);
	}


	
	public void delStatisticalData(String id) throws Exception {
		statisticalDataDao.delStatisticalData(id);
	}

	
	
	public void updateStatisticalData(StatisticalData statisticalData) throws Exception {
		statisticalDataDao.updateStatisticalData(statisticalData);
	}


	
	public List<StatisticalData> getStatisticalData(StatisticalData statisticalData) throws Exception {
		return statisticalDataDao.getStatisticalData(statisticalData);
		
	}


}
