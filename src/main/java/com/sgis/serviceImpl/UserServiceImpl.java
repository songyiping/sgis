package com.sgis.serviceImpl;

import java.util.Date;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.UserDao;
import com.sgis.entity.User;
import com.sgis.service.UserService;

@Transactional
@Service(value="userService")
public class UserServiceImpl implements UserService {

	@Resource(name="userDao")
	private UserDao uDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	
	public User getUserById(String id) throws Exception {
		return uDao.getUserById(id);
	}
	
	/**
	 * 添加用户信息，与 person 一一对应
	 * @param userInf
	 * @param personId
	 * @throws Exception
	 */
	
	public void addUser(User user) throws Exception {
		user.setCreateTime(new Date());
		uDao.addUser(user);
	}

	/**
	 * 删除账号 （即删除用户信息）
	 * @param id
	 * @throws Exception
	 */
	
	public void delUser(String id) throws Exception {
		uDao.delUser(id);
	}

	/**
	 * 修改账号信息 （即修改 user 信息）
	 * @param userInf
	 * @param personId
	 * @throws Exception
	 */

	public void updateUser(User user) throws Exception {
		uDao.updateUser(user);
	}

	
	/**
	 * 登录
	 */
	
	public User login(String username,String password) throws Exception {
		return uDao.login(username,password);
	}


}
