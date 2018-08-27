package com.sgis.controller;

import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.News;
import com.sgis.entity.NewsType;
import com.sgis.service.NewsService;
import com.sgis.service.NewsTypeService;
import com.sgis.service.SystemFileService;

@Controller
@RequestMapping(value = "/news")
public class NewsController {

	@Resource(name = "newsTypeService")
	private NewsTypeService newsTypeService;
	@Resource(name = "newsService")
	private NewsService newsService;
	@Resource(name = "systemFileService")
	private SystemFileService systemFileService;

	NewsType newsType;

	/*
	 * 开始添加新闻
	 */
	@RequestMapping(value = "/toadd/{newsTypeId:[a-zA-Z0-9_]+}")
	public ModelAndView addNews(@PathVariable String newsTypeId) throws Exception {
		ModelAndView temp = new ModelAndView();
		newsType = newsTypeService.getNewsTypeById(newsTypeId);
		temp.addObject("newsType", newsType);
		String url;
		try {
			url = newsType.getAddFile().getUrl();
		} catch (Exception e) {
			temp.addObject("exception", "未找到该类型文件的添加模板，请检查新闻类型类型管理设置！");
			temp.addObject("msg", e.toString());
			url = "exception/file";
		}
		String myUUID = UUID.randomUUID().toString();
		String id = myUUID.replace("-", "");
		temp.addObject("uuid", id);

		temp.setViewName("/backstage/jsp/" + url);
		return temp;
	}

	/*
	 * 添加新闻信息
	 */
	@RequestMapping(value = "/add")
	public ModelAndView addNews(News news, HttpServletRequest request) throws Exception {
		ModelAndView map = new ModelAndView();

		Date now = new Date();
		news.setCreateTime(now);

		newsService.addNews(news);
		map.setViewName("redirect:../backstage/" + news.getNewsType().getNewsTypeId() + ".do");
		return map;
	}

	/*
	 * 开始修改新闻
	 */
	@RequestMapping(value = "/toedit")
	public ModelAndView eidtNews(String id, ModelAndView map, HttpServletRequest request) throws Exception {
		News n = newsService.getNewsById(id);
		newsType = newsTypeService.getNewsTypeById(n.getNewsType().getNewsTypeId());
		map.addObject("newsType", newsType);
		map.addObject("news", n);
		map.addObject("uuid", n.getNewsId());
		String url;
		try {
			url = newsType.getEditFile().getUrl();
		} catch (Exception e) {
			map.addObject("exception", "未找到该类型文件的修改编辑模板，请检查新闻类型类型管理设置！");
			url = "exception/file";
			map.addObject("msg", e.toString());
		}
		map.setViewName("/backstage/jsp/" + url);
		return map;
	}

	/*
	 * 修改新闻
	 */
	@RequestMapping(value = "/edit")
	public ModelAndView editNews(News news, HttpServletRequest request) throws Exception {
		ModelAndView map = new ModelAndView();

		Date now = new Date();
		news.setUpdateTime(now);
		news.setIsDelete(1);
		newsService.updateNews(news);
		map.setViewName("redirect:../backstage/" + news.getNewsType().getNewsTypeId() + ".do");
		return map;
	}

	/*
	 * 修改创建时间
	 */
	@RequestMapping(value = "/edit_createTime")
	public ModelAndView edit_createTime(String id, Date createTime, HttpServletRequest request) throws Exception {
		ModelAndView map = new ModelAndView();
		News temp = newsService.getNewsById(id);
		if (createTime != null) {
			temp.setCreateTime(createTime);
			newsService.updateNews(temp);
		}
		map.setViewName("redirect:../backstage/" + temp.getNewsType().getNewsTypeId() + ".do");
		return map;
	}

	/*
	 * 删除
	 */
	@RequestMapping(value = "/del")
	public ModelAndView delNews(String id, ModelAndView map, HttpServletRequest request) throws Exception {
		News n = newsService.getNewsById(id);
		try {

			newsService.delNews(n);
		} catch (Exception e) {
			e.printStackTrace();
		}
		map.setViewName("redirect:../backstage/" + n.getNewsType().getNewsTypeId() + ".do");
		return map;
	}

	/*
	 * 置顶
	 */
	@RequestMapping(value = "/istop")
	public ModelAndView isTop(String id, ModelAndView map, HttpServletRequest request) throws Exception {
		News n = newsService.getNewsById(id);
		try {
			newsService.isTop(n);
		} catch (Exception e) {
			e.printStackTrace();
		}

		map.setViewName("redirect:../backstage/" + n.getNewsType().getNewsTypeId() + ".do");
		return map;
	}

	/*
	 * 撤销置顶
	 */
	@RequestMapping(value = "/isnottop")
	public ModelAndView isNotTop(String id, ModelAndView map, HttpServletRequest request) throws Exception {
		News n = newsService.getNewsById(id);
		try {
			newsService.isNotTop(n);
		} catch (Exception e) {
			e.printStackTrace();
		}

		map.setViewName("redirect:../backstage/" + n.getNewsType().getNewsTypeId() + ".do");
		return map;
	}

	/*
	 * 发布
	 */
	@RequestMapping(value = "/isvisible")
	public ModelAndView isvisible(String id, ModelAndView map, HttpServletRequest request) throws Exception {
		News n = newsService.getNewsById(id);
		try {
			newsService.isVisible(n);
		} catch (Exception e) {
			e.printStackTrace();
		}

		map.setViewName("redirect:../backstage/" + n.getNewsType().getNewsTypeId() + ".do");
		return map;
	}
}
