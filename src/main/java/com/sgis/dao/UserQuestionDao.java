package com.sgis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.UserQuestion;

@Transactional
@Component(value = "userQuestionDao")
public interface UserQuestionDao {

	/**
	 * 添加 （UserQuestion）信息
	 */
	public void addUserQuestion(@Param("userQuestion") UserQuestion userQuestion) throws Exception;

	/**
	 * 根据 id 查找用户提问信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public UserQuestion getUserQuestionById(@Param("id") String id) throws Exception;

	/**
	 * 删除提问信息（即删除 UserQuestion）
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void delUserQuestion(String id) throws Exception;

	/**
	 * 修改提问信息（即修改 UserQuestion）
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void updateUserQuestion(@Param("userQuestion") UserQuestion userQuestion) throws Exception;

	/**
	 * 根据 id 查找用户提问信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */

	public List<UserQuestion> getUserQuestionList(@Param("userQuestion") UserQuestion userQuestion,
			@Param("chooseNum") int chooseNum, @Param("pageSize") int pageSize) throws Exception;

	public int getUserQuestionCount(@Param("userQuestion") UserQuestion userQuestion);

}
