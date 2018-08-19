package com.sgis.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.sgis.entity.SystemFile;


@Transactional
@Component(value="systemFileDao")
public interface SystemFileDao {

	
	public void addSystemFile(@Param("systemFile")SystemFile systemFile) throws Exception;
		
	public SystemFile getSystemFileById(@Param("id")String id) throws Exception;
	
	public void delSystemFile(@Param("id")String id) throws Exception;
	
	public void updateSystemFile(@Param("systemFile")SystemFile systemFile) throws Exception;
		
	public List<SystemFile> getSystemFile(@Param("systemFile")SystemFile systemFile) throws Exception;
	
}
