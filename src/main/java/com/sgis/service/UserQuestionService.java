
package com.sgis.service;

import com.sgis.entity.UserQuestion;
import com.sgis.unit.PageModel;

public interface UserQuestionService {

	public UserQuestion getUserQuestionById(String id) throws Exception;

	public void addUserQuestion(UserQuestion userQuestion) throws Exception;

	public void delUserQuestion(String id) throws Exception;

	public void updateUserQuestion(UserQuestion userQuestion) throws Exception;

	public PageModel getUserQuestionList(UserQuestion userQuestion, int chooseNum, int pageSize) throws Exception;

}