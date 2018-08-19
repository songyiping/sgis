package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.CarouselFigureDao;
import com.sgis.entity.CarouselFigure;
import com.sgis.service.CarouselFigureService;

@Transactional
@Service(value="carouselFigureService")
public class CarouselFigureServiceImpl implements CarouselFigureService {

	@Resource(name="carouselFigureDao")
	private CarouselFigureDao carouselFigureDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */

	public CarouselFigure getCarouselFigureById(String id) throws Exception {
		return carouselFigureDao.getCarouselFigureById(id);
	}
	
	

	public void addCarouselFigure(CarouselFigure carouselFigure) throws Exception {
		carouselFigureDao.addCarouselFigure(carouselFigure);
	}



	public void delCarouselFigure(String id) throws Exception {
		carouselFigureDao.delCarouselFigure(id);
	}

	

	public void updateCarouselFigure(CarouselFigure carouselFigure) throws Exception {
		carouselFigureDao.updateCarouselFigure(carouselFigure);
	}


	
	public List<CarouselFigure> getCarouselFigure(CarouselFigure carouselFigure) throws Exception {
		return carouselFigureDao.getCarouselFigure(carouselFigure);
		
	}


}
