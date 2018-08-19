package com.sgis.service;
import com.sgis.entity.User;

public interface UserService {

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public User getUserById(String id) throws Exception;
	
	/**
	 * 添加用户信息
	 * @param user
	 * @param personId
	 * @throws Exception
	 */
	public void addUser(User user) throws Exception;
	
	/**
	 * 删除账号 （即删除用户信息）
	 * @param id
	 * @throws Exception
	 */
	public void delUser(String id) throws Exception;
	
	/**
	 * 修改账号信息 （即修改 user 信息）
	 * @param user
	 * @param personId
	 * @throws Exception
	 */
	public void updateUser(User user) throws Exception;
	
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */

	public User login(String username, String password)throws Exception;;
	
}