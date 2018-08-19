
package com.sgis.service;
import java.util.List;

import com.sgis.entity.CarouselFigure;
public interface CarouselFigureService {

	
	public CarouselFigure getCarouselFigureById(String id) throws Exception;
	
	public void addCarouselFigure(CarouselFigure carouselFigure) throws Exception;
	
	public void delCarouselFigure(String id) throws Exception;
	
	public void updateCarouselFigure(CarouselFigure carouselFigure) throws Exception;

	public List<CarouselFigure> getCarouselFigure(CarouselFigure carouselFigure) throws Exception;
	
}