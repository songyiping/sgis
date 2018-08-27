package com.sgis.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import sun.misc.BASE64Encoder;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.News;
import com.sgis.entity.NewsType;
import com.sgis.entity.User;
import com.sgis.service.NewsService;
import com.sgis.service.NewsTypeService;
import com.sgis.service.UserService;
import com.sgis.unit.PageModel;


@Controller
public class LoginController {
	@Resource(name="userService")
	private UserService userService;
	@Resource(name="newsTypeService")
	private NewsTypeService newsTypeService;
	@Resource(name="newsService")
	private NewsService newsService;
	
	List<NewsType> fatherList;
    List<NewsType> typeList;
	List<News> newsList = null;
	
	/*首页信息*/
	@RequestMapping(value= {"/","/index"})
	public ModelAndView index(HttpServletRequest request,HttpSession httpSession) throws Exception {
		ModelAndView map = new ModelAndView();
		fatherList = newsTypeService.getNewsTypeByFatherId("FATHER"); 
		httpSession.setAttribute("fatherList", fatherList);

		News n = new News();   //新建查询对象
		n.setIsDelete(1);      //未删除
		n.setIsVisible(1);     //可见的
		NewsType nt = new NewsType();
		PageModel p;       
		
		//韶钢新闻
		nt.setNewsTypeId("ca");
		n.setNewsType(nt);
		p = newsService.getNewsList(n, 1, 8);
		map.addObject("c1",p);
		//韶钢新闻轮播
	
		
		 p = newsService.getNewsList(n, 1, 3);
		map.addObject("cc1",p);
		
		//信息公告
		nt.setNewsTypeId("cb");
		n.setNewsType(nt);
		 p = newsService.getNewsList(n, 1, 6);
		map.addObject("c2",p);
		//微信公众号
		nt.setNewsTypeId("ce");
		n.setAuthor("友爱的宝武");
		n.setNewsType(nt);
		p = newsService.getNewsList(n, 1, 1);
		map.addObject("c5_1",p);
		
		n.setAuthor("家在韶钢");
		n.setNewsType(nt);
		p = newsService.getNewsList(n, 1, 1);
		map.addObject("c5_2",p);
		
		n.setAuthor("宝武韶钢共青团");
		n.setNewsType(nt);
		p = newsService.getNewsList(n, 1, 1);
		map.addObject("c5_3",p);
		//视频矩阵
		nt.setNewsTypeId("cf");
		n.setNewsType(nt);
		 p = newsService.getNewsList(n, 1, 1);
		map.addObject("c6",p);
		
		map.setViewName("common/jsp/index");
		return map;
	
	}
	
	/*登录请求*/
	@RequestMapping(value="/tologin")
	public void tologin(String username, String password, String checkCode,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		
		PrintWriter out=response.getWriter();
		JSONObject json=new JSONObject();
		//获得图片缓存字母
		String imageCode = (String) request.getSession(false).getAttribute("imageCode");
		
		if(imageCode.equals(checkCode)) {
			
			User user = null;
			
			try {
			user = userService.login(username, EncoderByMd5(password));
			if(user != null) {	
				request.getSession().setAttribute("user", user);	
				json.put("result", "password_success");
			}else {
				json.put("result", "password_error");
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		else {
			json.put("result", "checkCode_error");
		}
		out.print(json);	
		out.close();
		
	}
	
	/*登录MDB加密*/
	public String EncoderByMd5(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException{
        //确定计算方法
        MessageDigest md5=MessageDigest.getInstance("MD5");
        BASE64Encoder base64en = new BASE64Encoder();
        //加密后的字符串
        String newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
        return newstr;
    }
	
	/*如果已经登录跳过登录框*/
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView map = new ModelAndView();
		User user = null;
		user = (User) request.getSession().getAttribute("user");
		if(user != null) {
			map.setViewName("redirect:/home.do");
		}
		else {
			map.setViewName("backstage/jsp/login/login");
		}
		return map;			
	}

	
	/*登录成功*/
	@RequestMapping(value="/home")
	public ModelAndView home(HttpServletRequest request,HttpSession httpSession) {
		ModelAndView map = new ModelAndView();
		//判断登陆
		if(httpSession.getAttribute("user") == null){
			map.setViewName("redirect:/login.do");
			return map;
		}
		
		
		List<NewsType> allList  = newsTypeService.getAll();
		request.getSession().setAttribute("allList", allList);
		map.setViewName("/backstage/jsp/web/managerHome");
		return map;
	}
	
	/*登出*/
	@RequestMapping(value="/out")
	public String out(ModelAndView map, HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.getSession().invalidate();
		//map.setViewName("login_1");
		//map.addObject("name", 1);
		request.setAttribute("name", 1);
		//response.sendRedirect("login");
		return "redirect:/login.do";
		//Write( " <script> parent.window.location.href= 'default.aspx ' </script> ");
		//return map;
	}
}
