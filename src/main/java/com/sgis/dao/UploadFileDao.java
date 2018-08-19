package com.sgis.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.UploadFile;

@Transactional
@Component(value="uploadFileDao")
public interface UploadFileDao {

	/**
	 * 添加 用户（UploadFile）信息
	 */
	public void addUploadFile(@Param("uploadFile")UploadFile uploadFile) throws Exception;
	
	/**
	 * 根据 id 查找用户信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public UploadFile getUploadFileById(@Param("id")String id) throws Exception;
	
	/**
	 * 删除账号（即删除 UploadFile）
	 * @param id
	 * @throws Exception
	 */
	public void delUploadFile(@Param("id")String id) throws Exception;
	
	/**
	 * 修改账号 （即修改 UploadFile）
	 * @param id
	 * @throws Exception
	 */
	public void updateUploadFile(@Param("uploadFile")UploadFile uploadFile) throws Exception;
	
	public List<UploadFile> getUploadFile(@Param("id")UploadFile uploadFile) throws Exception;
	
	
}
