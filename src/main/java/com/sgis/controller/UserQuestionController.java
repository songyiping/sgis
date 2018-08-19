package com.sgis.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.sgis.entity.UserQuestion;
import com.sgis.service.UserQuestionService;
import com.sgis.unit.PageModel;

import eu.bitwalker.useragentutils.Browser;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;

@Controller
@RequestMapping(value = "/userQuestion")
public class UserQuestionController {
	
	@Resource(name = "userQuestionService")
	private UserQuestionService userQuestionService;

	@RequestMapping(value = "/list")
	public ModelAndView getUserQuestionList(HttpServletRequest request,Integer handTab) throws Exception{
		ModelAndView temp = new ModelAndView();
		UserQuestion u = new UserQuestion();
		u.setIsDelete(1);
		u.setHandTab(handTab);
		int chooseNum = 1;
		PageModel pageNews = null;
		String chooseNum_str = request.getParameter("chooseNum");
		if (chooseNum_str != null) {
			chooseNum = Integer.valueOf(chooseNum_str);
		}
		pageNews = userQuestionService.getUserQuestionList(u, chooseNum, 300);
		temp.addObject("pageNews", pageNews);
		temp.addObject("chooseNum", chooseNum);	
		temp.setViewName("backstage/jsp/userQuestion/userQuestion_list");
	    return temp;	
	}
	
	
	@RequestMapping(value = "/submitUserQuestion")
	public void submitUserQuestion(String name, String email, String text,String checkCode, HttpServletRequest request, HttpServletResponse response) throws IOException {
System.out.println(name+email+text);
		PrintWriter out = response.getWriter();
		JSONObject json = new JSONObject();

		// 获得图片缓存字母
		String imageCode = (String) request.getSession(false).getAttribute("imageCode");

		if (imageCode.equals(checkCode)) {
			UserQuestion uq = new UserQuestion();
			uq.setEmail(email);

			String myUUID = UUID.randomUUID().toString();
			String ida = myUUID.replace("-", "");
			uq.setId(ida);

			uq.setText(text);
			uq.setName(name);
			uq.setIp(getIp2(request));//ip
			UserAgent userAgent = UserAgent.parseUserAgentString(request.getHeader("User-Agent"));   //req就是request请求
			Browser browser = userAgent.getBrowser();  //获取浏览器信息 
			OperatingSystem os = userAgent.getOperatingSystem(); //获取操作系统信息
			uq.setUserAgent(browser.getName());
			uq.setOsName(os.getName());			
		
			Date now = new Date();
			uq.setCreateTime(now);
			
			try {
				userQuestionService.addUserQuestion(uq);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				json.put("result", "connet_error");
			}
			json.put("result", "password_success");
			
		} else {
			json.put("result", "checkCode_error");
		}
		out.print(json);
		out.close();

	}

	public static String getIp2(HttpServletRequest request) {
		String ip = request.getHeader("X-Forwarded-For");
		if (StringUtils.isNotEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
			// 多次反向代理后会有多个ip值，第一个ip才是真实ip
			int index = ip.indexOf(",");
			if (index != -1) {
				return ip.substring(0, index);
			} else {
				return ip;
			}
		}
		ip = request.getHeader("X-Real-IP");
		if (StringUtils.isNotEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
			return ip;
		}
		return request.getRemoteAddr();
	}
}
