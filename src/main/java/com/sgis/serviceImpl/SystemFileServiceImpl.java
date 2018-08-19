package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.SystemFileDao;
import com.sgis.entity.SystemFile;
import com.sgis.service.SystemFileService;

@Transactional
@Service(value="systemFileService")
public class SystemFileServiceImpl implements SystemFileService {

	@Resource(name="systemFileDao")
	private SystemFileDao systemFileDao;
	

	/**
	 * 根据用户 id 获取用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	
	public SystemFile getSystemFileById(String id) throws Exception {
		return systemFileDao.getSystemFileById(id);
	}
	
	
	
	public void addSystemFile(SystemFile systemFile) throws Exception {
		systemFileDao.addSystemFile(systemFile);
	}


	
	public void delSystemFile(String id) throws Exception {
		systemFileDao.delSystemFile(id);
	}

	
	
	public void updateSystemFile(SystemFile systemFile) throws Exception {
		systemFileDao.updateSystemFile(systemFile);
	}


	
	public List<SystemFile> getSystemFile(SystemFile systemFile) throws Exception {
		return systemFileDao.getSystemFile(systemFile);
		
	}


}
