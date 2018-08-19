package com.sgis.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.StatisticalData;

@Transactional
@Component(value="statisticalDataDao")
public interface StatisticalDataDao {

	/**
	 * 添加 （StatisticalData）信息
	 */
	public void addStatisticalData(@Param("statisticalData")StatisticalData statisticalData) throws Exception;
	
	/**
	 * 根据 id 查找用户提问信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public StatisticalData getStatisticalDataById(@Param("id")String id) throws Exception;
	
	/**
	 * 删除提问信息（即删除 StatisticalData）
	 * @param id
	 * @throws Exception
	 */
	public void delStatisticalData(@Param("id")String id) throws Exception;
	
	
	/**
	 * 修改提问信息（即修改 StatisticalData）
	 * @param id
	 * @throws Exception
	 */
	public void updateStatisticalData(@Param("statisticalData")StatisticalData statisticalData) throws Exception;
	
	/**
	 * 根据 id 查找用户提问信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<StatisticalData> getStatisticalData(@Param("statisticalData")StatisticalData statisticalData) throws Exception;
}
