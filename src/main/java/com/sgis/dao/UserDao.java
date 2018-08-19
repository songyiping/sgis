package com.sgis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.User;

@Transactional
@Component(value="userDao")
public interface UserDao {

	/**
	 * 
	 * 添加 用户（User）信息
	 */
	public void addUser(@Param("user")User user) throws Exception;
	
	/**
	 * 根据 id 查找用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public User getUserById(String userId) throws Exception;
	
	/**
	 * 删除账号（即删除 user）
	 * @param id
	 * @throws Exception
	 */
	public void delUser(String userId) throws Exception;
	
	/**
	 * 修改账号 （即修改 user）
	 * @param id
	 * @throws Exception
	 */
	public void updateUser(@Param("user")User user) throws Exception;
	
	/**
	 * 登录
	 * @param username
	 * @param password 
	 * @param password
	 * @return
	 * @throws Exception
	 */
	public User login(@Param("username")String username, @Param("password")String password) throws Exception;
	
	public List<User> getUser(@Param("user")User user) throws Exception;
}
