package com.sgis.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.dao.UploadFileDao;
import com.sgis.entity.UploadFile;
import com.sgis.service.UploadFileService;
@Transactional
@Service(value="uploadFileService")
public class UploadFileServiceImpl implements UploadFileService {

	@Resource(name="uploadFileDao")
	private UploadFileDao uploadFileDao;
	


	public UploadFile getUploadFileById(String id) throws Exception {
		return uploadFileDao.getUploadFileById(id);
	}
	
	
	public void addUploadFile(UploadFile uploadFile) throws Exception {
		uploadFileDao.addUploadFile(uploadFile);
	}


	public void delUploadFile(String id) throws Exception {
		 uploadFileDao.delUploadFile(id);
	}

	

	public void updateUploadFile(UploadFile uploadFile) throws Exception {
		uploadFileDao.updateUploadFile(uploadFile);
	}

	public List<UploadFile> getUploadFile(UploadFile uploadFile) throws Exception{
		return uploadFileDao.getUploadFile(uploadFile);
	}


	@Override
	public List<UploadFile> getUploadFileByNewsId(String id) throws Exception {
		return uploadFileDao.getUploadFileByNewsId(id);	
	}
}
