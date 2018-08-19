package com.sgis.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.User;
import com.sgis.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	
	@Resource(name="userService")
	private UserService userService;
	
	/**
	 * @param username
	 * @param password
	 * @param expireTime
	 * @param personId
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/add")
	public ModelAndView addUser(String userId,String username, String password,String name, String Email,String hearderPic,
			                     String address,String sex,String telephone,HttpServletRequest request){		
		User userInf = new User();
		userInf.setUserId(userId);
		userInf.setUserName(username);
		userInf.setUserPassword(password);
		
		userInf.setAddress(address);
		
		Date now = new Date();
		userInf.setCreateTime(now);
        try {
			userService.addUser(userInf);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		ModelAndView map = new ModelAndView();
		map.setViewName("common/pub_add_success");
		return map;
	}
	
	/**
	 * 删除账号信息 （即删除 user 信息）
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/del")
	public ModelAndView delUser(HttpServletRequest request, ModelAndView map){
		String id_str = request.getParameter("id");
		//判断要删除的人员是否有账号信息
		if(id_str == null || "".equals(id_str)){
			request.setAttribute("error", "该人员没有分配账号，不能执行删除账号操作！");
			throw new RuntimeException("该人员没有分配账号，不能执行删除账号操作！");
		}
		
		try {
			userService.delUser(id_str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		map.setViewName("common/pub_del_success");
		
		return map;
	}
	
	
	@RequestMapping(value="/list")
	public ModelAndView list(ModelAndView map){
		map.setViewName("backstage/jsp/user/user_list");
		return map;
	}
	
	/**
	 * 修改账号信息（即修改 user）
	 * @param username
	 * @param password
	 * @param expireTime   失效时间
	 * @param personId    person 的 id
	 * @param id    用户 id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/update")
	public ModelAndView updateUser(String username, String password, int personId, String id, 
			HttpServletRequest request, ModelAndView map){
		User user = null;
		try {
			//获取要修改的 用户信息
			user = userService.getUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//设置user的新属性
		user.setUserName(username);
		user.setUserPassword(password);
		
		String expireTime = request.getParameter("expireTime");
		
		if(expireTime != null || "".equals(expireTime)){
			//将 expireTime 转换为Date型
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date expireTime_1 = null;
			try {
				expireTime_1 = sdf.parse(expireTime);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
		
		}else{
			
		}
				
		//判断 personId 是否为 0
		if(personId == 0){
			request.setAttribute("error", "没有选择人员信息，请选择人员 id");
			throw new RuntimeException("必须选择人员信息");
		}	
		
		try {
			userService.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String num = request.getParameter("num");
		if(num == "1" || "1".equals(num)){
			map.setViewName("user/update_input_1");
			request.getSession().setAttribute("user", user);
			request.setAttribute("success", "密码修改成功！");
		}else{
			map.setViewName("common/pub_update_success");
		}
		
		return map;
	}
	
	
	
	
	
	
}
