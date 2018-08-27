
package com.sgis.service;
import java.util.List;

import com.sgis.entity.UploadFile;

public interface UploadFileService {

	
	public UploadFile getUploadFileById(String id) throws Exception;
	
	public List<UploadFile> getUploadFileByNewsId(String id) throws Exception;
	public void addUploadFile(UploadFile uploadFile) throws Exception;
	
	
	public void delUploadFile(String id) throws Exception;
	
	
	public void updateUploadFile(UploadFile uploadFile) throws Exception;
	
	public List<UploadFile> getUploadFile(UploadFile uploadFile) throws Exception;
	
}