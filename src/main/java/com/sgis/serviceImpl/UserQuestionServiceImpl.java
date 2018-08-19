package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.UserQuestionDao;
import com.sgis.entity.UserQuestion;
import com.sgis.service.UserQuestionService;
import com.sgis.unit.PageModel;

@Transactional
@Service(value = "userQuestionService")
public class UserQuestionServiceImpl implements UserQuestionService {

	@Resource(name = "userQuestionDao")
	private UserQuestionDao userQuestionDao;

	/**
	 * 根据用户 id 获取用户信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */

	public UserQuestion getUserQuestionById(String id) throws Exception {
		return userQuestionDao.getUserQuestionById(id);
	}

	public void addUserQuestion(UserQuestion userQuestion) throws Exception {
		userQuestionDao.addUserQuestion(userQuestion);
	}

	public void delUserQuestion(String id) throws Exception {
		userQuestionDao.delUserQuestion(id);
	}

	public void updateUserQuestion(UserQuestion userQuestion) throws Exception {
		userQuestionDao.updateUserQuestion(userQuestion);
	}

	@Override
	public PageModel getUserQuestionList(UserQuestion userQuestion, int chooseNum, int pageSize) throws Exception {
		List<UserQuestion> datas;

		datas = userQuestionDao.getUserQuestionList(userQuestion, (chooseNum - 1) * pageSize, pageSize);

		PageModel pm = new PageModel();

		int totle = userQuestionDao.getUserQuestionCount(userQuestion);
		int pageNum = 0;
		if (totle != 0) {

			if (totle % pageSize == 0) {
				pageNum = totle / pageSize;
			} else {
				pageNum = totle / pageSize + 1;
			}
		}

		pm.setDatas(datas);
		pm.setTotle(totle);
		pm.setPageNum(pageNum);
		return pm;

	}

}
