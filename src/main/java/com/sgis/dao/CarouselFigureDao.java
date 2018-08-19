package com.sgis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.CarouselFigure;

@Transactional
@Component(value = "carouselFigureDao")
public interface CarouselFigureDao {

	/**
	 * 作用：添加carouselFigure类对象
	 * 
	 * @param carouselFigure
	 * @throws Exception
	 */
	public void addCarouselFigure(@Param("carouselFigure") CarouselFigure carouselFigure) throws Exception;

	/**
	 * 作用：根据ID获取一条carouselFigure类数据
	 * 
	 * @param id
	 * @return CarouselFigure
	 * @throws Exception
	 */
	public CarouselFigure getCarouselFigureById(@Param("id") String id) throws Exception;

	/**
	 * 作用：根据ID删除一条 CarouselFigure类数据
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void delCarouselFigure(@Param("id") String id) throws Exception;

	/**
	 * 作用：更新一条CarouselFigure数据，其中id不为空
	 * 
	 * @param carouselFigure
	 * @throws Exception
	 */
	public void updateCarouselFigure(@Param("carouselFigure") CarouselFigure carouselFigure) throws Exception;

	/**
	 * 作用：根据传入的对象获得CarouselFigure列表
	 * 
	 * @param carouselFigure
	 * @return
	 * @throws Exception
	 */
	public List<CarouselFigure> getCarouselFigure(@Param("carouselFigure") CarouselFigure carouselFigure)
			throws Exception;
	
}
