package com.sgis.unit;
//该类用上传于文件大小和类型控制

import org.springframework.web.multipart.MultipartFile;

public class FileCheck {
	private long size;// 文件大小
	private String type;// 文件类型
	private String msg; // 文件信息
	private String fileName;// 文件名
	private boolean checkResult = false;
	private static String[] image = { ".gif", ".jpg", ".jpeg", ".bmp", ".png" };
	private static String[] video = { ".ogg", ".mp4" };
	private static String[] office = { ".doc", ".docx", ".xls", ".xlsx", ".ppt", "pptx" };
	private static long imageMaxSize = 50;   //单位MB
	private static long videoMaxSize = 500;  //单位MB
	private static long officeMaxSize = 10;  //单位MB
   
	@SuppressWarnings("unused")
	private FileCheck() {
		
	}
	
	public FileCheck(MultipartFile file,String userType) {
		if(!file.isEmpty()) {
			this.fileName = file.getOriginalFilename();
			this.size = file.getSize();
			this.type = userType;
			checkType();
			checkSize();	
		}
		else{
			msg = "该文件为空";
			checkResult = false;
		}
	}

	/*
	 * 文件大小检查
	 * 传入参数：文件、指定文件类型
	 */
	public void checkSize() {
		long tempSize = 0;
		switch (type) {
		case "image":
			tempSize = imageMaxSize; 
			break;
		case "video":
			tempSize = videoMaxSize;
			break;
		case "office":
			tempSize = officeMaxSize;
			break;
		default:
			this.msg = "错误，该类型文件在系统中未限制大小!";
			checkResult = false;
		}
			tempSize = tempSize * 10240000; //转换为字节大小
			if (this.size <= tempSize) {
				checkResult = true;   //大小检查通过
			} else {
				msg = "尺寸过大，上传失败";
				checkResult = false;
			}
	}

	/*
	 * 文件类型检查
	 * 传入参数：文件、指定文件类型 返回结果：boolean
	 */
	public void checkType() {		
		String[] list = null;
		switch (type) {
		case "image":
			list = image;
			break;
		case "video":
			list = video;
			break;
		case "office":
			list = office;
			break;
		default:
			this.msg = "错误，该类型文件在系统中未未能识别类型!";
			checkResult = false;
		}
		
		for (String ext : list) {
			if (fileName.toLowerCase().endsWith(ext)) {
				checkResult = true;
			}
		}
		checkResult = false;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public boolean isCheckResult() {
		return checkResult;
	}

	public void setCheckResult(boolean checkResult) {
		this.checkResult = checkResult;
	}

}