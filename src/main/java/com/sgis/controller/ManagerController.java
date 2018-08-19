package com.sgis.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.News;
import com.sgis.entity.NewsType;
import com.sgis.service.NewsService;
import com.sgis.service.NewsTypeService;
import com.sgis.service.SystemFileService;
import com.sgis.unit.CustomException;
import com.sgis.unit.PageModel;

@Controller
public class ManagerController {

	@Resource(name = "newsTypeService")
	private NewsTypeService newsTypeService;
	@Resource(name = "newsService")
	private NewsService newsService;
	@Resource(name = "systemFileService")
	private SystemFileService systemFileService;

	ModelAndView temp;
	List<NewsType> firstList;
	List<NewsType> secondList;
	List<NewsType> thirdList;
	List<NewsType> allList;
	List<News> newsList = null;
	private static int pageSize = 30;

	News newsCheck;
	NewsType firstBar;
	NewsType secondBar;
	NewsType thirdBar;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/list/{url:[a-zA-Z0-9_]+}")
	public ModelAndView getNewsList(@PathVariable String url, HttpSession httpSession, HttpServletRequest request)
			throws Exception {
		if (httpSession.getAttribute("allList") == null) {
			allList = newsTypeService.getAll(); // 数据库取数据
			httpSession.setAttribute("allList", allList);
		} else {
			allList = (List<NewsType>) httpSession.getAttribute("allList");
		}
		int url_length = url.length(); // 获得url长度
		String[] typeString;
		if (url_length > 0 && url_length <= 3) { // 允许三级导航列表
			typeString = new String[url_length];
			if (into_list(url, allList)) { // 判断当前分类是否存在
				for (int i = 0; i < url_length; i++) {
					typeString[i] = url.substring(0, i + 1);
				}
			} else {
				throw new CustomException("导航参数错误，未找到该分类");
			}

		} else {
			throw new CustomException("导航长度错误，未允许的字段");
		}

		if (httpSession.getAttribute("firstList") == null) {
			firstList = newsTypeService.getNewsTypeByFatherId("FATHER");
			httpSession.setAttribute("firstList", firstList);
		}
		firstBar = null;
		secondBar = null;
		thirdBar = null;
		if (url_length == 1) {
			firstBar = get_type_by_url(typeString[0], allList);
			secondBar = get_sun_by_url(typeString[0], allList);
			if (secondBar != null) {
				secondList = get_sonTypeList(typeString[0], allList);
				String sun_url = secondBar.getNewsTypeId();
				thirdBar = get_sun_by_url(sun_url, allList);
				if (thirdBar != null) {
					thirdList = get_sonTypeList(sun_url, allList);
					to_getNewsList(thirdBar, request);
				} else {
					to_getNewsList(secondBar, request);
				}
			}
		}
		if (url_length == 2) {
			firstBar = get_type_by_url(typeString[0], allList);
			secondBar = get_type_by_url(typeString[1], allList);
			secondList = get_sonTypeList(typeString[0], allList);
			thirdBar = get_sun_by_url(typeString[1], allList);
			if (thirdBar != null) {
				thirdList = get_sonTypeList(typeString[1], allList);
				to_getNewsList(thirdBar, request);
			} else {
				to_getNewsList(secondBar, request);
			}
		}
		if (url_length == 3) {
			firstBar = get_type_by_url(typeString[0], allList);
			secondBar = get_type_by_url(typeString[1], allList);
			thirdBar = get_type_by_url(typeString[2], allList);
			secondList = get_sonTypeList(typeString[0], allList);
			thirdList = get_sonTypeList(typeString[1], allList);
			to_getNewsList(thirdBar, request);
		}

		httpSession.setAttribute("allList", allList);
		httpSession.setAttribute("secondList", secondList);
		httpSession.setAttribute("thirdList", thirdList);
		httpSession.setAttribute("firstBar", firstBar);
		httpSession.setAttribute("secondBar", secondBar);
		httpSession.setAttribute("thirdBar", thirdBar);
		return temp;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/check/{id:[a-zA-Z0-9_]+}")
	public ModelAndView getNewsCheck(@PathVariable String id, HttpSession httpSession, HttpServletRequest request) {
		newsCheck = new News();
		firstBar = null;
		secondBar = null;
		thirdBar = null;
		try {
			newsCheck = newsService.getNewsById(id); // 根据newsID获得 news
			if (newsCheck != null) {

				temp.addObject("newsCheck", newsCheck);
				String tempId = newsCheck.getNewsType().getNewsTypeId(); // 获得newsTypeId
				NewsType tempType = newsTypeService.getNewsTypeById(tempId);// 获得newsType
				if (tempType != null) {
					if (httpSession.getAttribute("allList") == null) {
						allList = newsTypeService.getAll(); // 数据库取数据
						httpSession.setAttribute("allList", allList);
					} else {
						allList = (List<NewsType>) httpSession.getAttribute("allList");
					}
					if (tempId.length() == 2) { // 二级新闻菜单tempId =2
						firstBar = get_type_by_url(tempId.substring(0, 1), allList);
						secondList = get_sonTypeList(tempType.getFatherId(), allList);
						secondBar = tempType;
						thirdBar = null;
						thirdList = null;
					}
					if (tempId.length() == 3) { // 三级新闻菜单tempId=3
						firstBar = get_type_by_url(tempId.substring(0, 1), allList);
						secondList = get_sonTypeList(tempId.substring(0, 1), allList);
						secondBar = get_type_by_url(tempId.substring(0, 2), allList);
						thirdList = get_sonTypeList(tempId.substring(0, 2), allList);
						thirdBar = tempType;
					}
					httpSession.setAttribute("allList", allList);
					httpSession.setAttribute("secondList", secondList);
					httpSession.setAttribute("thirdList", thirdList);
					httpSession.setAttribute("firstBar", firstBar);
					httpSession.setAttribute("secondBar", secondBar);
					httpSession.setAttribute("thirdBar", thirdBar);

					temp.setViewName("common/jsp/" + tempType.getCheckFile().getUrl());
				} else {
					temp.setViewName("common/jsp/exception/static_manage");
				}

			}
		} catch (Exception e) {
			new CustomException("数据库连接错误");
		}

		return temp;
	}

	// 判断是否存在
	public boolean into_list(String str, List<NewsType> list) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getNewsTypeId().equals(str)) {
				return true;
			}
		}
		return false;
	}

	// 取类型
	public NewsType get_type_by_url(String str, List<NewsType> list) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getNewsTypeId().equals(str)) {
				return list.get(i);
			}
		}
		return null;
	}

	// 取所有子类型
	public List<NewsType> get_sonTypeList(String str, List<NewsType> list) {
		List<NewsType> tempList = new ArrayList<NewsType>();
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getFatherId().equals(str)) {
				tempList.add(list.get(i));
			}
		}
		return tempList;
	}

	// 取第一儿子（如果存在）
	public NewsType get_sun_by_url(String str, List<NewsType> list) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getFatherId().equals(str)) {
				return list.get(i);
			}
		}
		return null;
	}

	public void to_getNewsList(NewsType newsType, HttpServletRequest request) throws Exception {
		temp = new ModelAndView();
		PageModel pageNews = null;
		News n = new News();
		n.setNewsType(newsType);
		n.setIsVisible(1);
		n.setIsDelete(1);

		// 单信息展示页
		if (newsType.getListFile() == null) {
			pageNews = newsService.getNewsList(n, 0, pageSize);
			temp.addObject("pageNews", pageNews);
			temp.setViewName("common/jsp/" + newsType.getCheckFile().getUrl());
		}
		// 信息列表展示页
		else {
			int chooseNum = 1;
			String chooseNum_str = request.getParameter("chooseNum");
			if (chooseNum_str != null) {
				chooseNum = Integer.valueOf(chooseNum_str);
			}
			pageNews = newsService.getNewsList(n, chooseNum, pageSize);
			temp.addObject("pageNews", pageNews);
			temp.addObject("chooseNum", chooseNum);
			temp.setViewName("common/jsp/" + newsType.getListFile().getUrl());
		}
	}

}
