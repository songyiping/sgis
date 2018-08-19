
package com.sgis.service;
import java.util.List;

import com.sgis.entity.SystemFile;
public interface SystemFileService {

	
	public SystemFile getSystemFileById(String id) throws Exception;
	
	public void addSystemFile(SystemFile file) throws Exception;
	
	public void delSystemFile(String id) throws Exception;
	
	public void updateSystemFile(SystemFile file) throws Exception;

	public List<SystemFile> getSystemFile(SystemFile file) throws Exception;
	
}