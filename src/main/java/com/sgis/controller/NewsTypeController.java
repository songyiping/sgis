package com.sgis.controller;

import java.util.List;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.NewsType;
import com.sgis.service.NewsTypeService;
import com.sgis.service.SystemFileService;
import com.sgis.service.UserService;	


@Controller
@RequestMapping(value="newsType")
public class NewsTypeController {
	@Resource(name="userService")
	private UserService userService;
	@Resource(name="newsTypeService")
	private NewsTypeService newsTypeService;
	@Resource(name="systemFileService")
	private SystemFileService systemFileService;
	
	/*列表请求*/
	@RequestMapping(value="/list")
	public ModelAndView getlist(HttpServletRequest request) throws IOException {
		ModelAndView temp = new ModelAndView();
		List<NewsType> allList = newsTypeService.getAll();
		temp.addObject("allList", allList);
		temp.setViewName("backstage/jsp/newsType/newsType_list");
	    return temp;	
	}
	
	/*修改请求*/
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit(HttpServletRequest request) throws IOException {
		ModelAndView temp = new ModelAndView();
		
		temp.setViewName("backstage/jsp/newsType/newsType_list");
	    return temp;	
	}
	/*修改*/
	@RequestMapping(value="/edit")
	public ModelAndView edit(HttpServletRequest request) throws IOException {
		ModelAndView temp = new ModelAndView();
		
		temp.setViewName("backstage/jsp/newsType/newsType_list");
	    return temp;	
	}
	
}
