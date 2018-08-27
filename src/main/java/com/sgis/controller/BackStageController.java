package com.sgis.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.News;
import com.sgis.entity.NewsType;
import com.sgis.service.SystemFileService;
import com.sgis.service.NewsService;
import com.sgis.service.NewsTypeService;

import com.sgis.unit.PageModel;

@Controller
@RequestMapping(value = "/backstage")
public class BackStageController {

	@Resource(name="newsTypeService")
	private NewsTypeService newsTypeService;
	@Resource(name="newsService")
	private NewsService newsService;
	@Resource(name="systemFileService")
	private SystemFileService systemFileService;
	
	private static int pageSize = 20;
    NewsType newsType ;
	
	
	
    /*
     * newsListForType 后台导航跳转
     * 
     * 
     */	
        @RequestMapping(value = "/{newsTypeId:[a-zA-Z0-9_]+}")
    	public ModelAndView newsListForType(@PathVariable String newsTypeId,HttpSession httpSession,HttpServletRequest request) throws Exception {
    		ModelAndView temp =new ModelAndView();
    		//判断登陆
    		if(httpSession.getAttribute("user") == null){
    			temp.setViewName("redirect:/login.do");
    			 return temp;
    		 }
    		//获得分类信息
    		newsType = newsTypeService.getNewsTypeById(newsTypeId);
    		temp.addObject("newsType", newsType);
    		//分页信息
    		int chooseNum = 1;
    		//接受参数 chooseNum_str
    		String chooseNum_str = request.getParameter("chooseNum");
    		if(chooseNum_str != null){
    			chooseNum = Integer.valueOf(chooseNum_str);
    		}
            PageModel pageNews = null;//分页类
            
    		NewsType firstBar = newsTypeService.getNewsTypeById(newsType.getFatherId());
    		temp.addObject("firstBar", firstBar);
    		temp.addObject("secondBar",newsType);
    		
            News n  = new News();
    		n.setNewsType(newsType);
    	
            n.setIsDelete(1);
    		pageNews = newsService.getNewsList(n, chooseNum, pageSize);

    		temp.addObject("pageNews", pageNews);
    		temp.addObject("chooseNum",chooseNum);
    		
    		String url;
    	    if(newsType.getManageFile()!= null) {
    	        url = newsType.getManageFile().getUrl();
    	    }else {
    	    	url = "exception/static_manage";  //静态类型列表
    	    }
    		
    		temp.setViewName("backstage/jsp/"+url);
    		
    		
    		
    		return temp;
    	}
/*
 * 
 * 
 */
    
    
    
}
