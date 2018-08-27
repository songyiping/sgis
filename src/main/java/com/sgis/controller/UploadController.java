package com.sgis.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sgis.entity.UploadFile;
import com.sgis.entity.User;
import com.sgis.service.UploadFileService;
import com.sgis.unit.CustomException;
import com.sgis.unit.FileCheck;

/*1:file_upload*/
/*2:image_upload*/
@Controller
public class UploadController {

	private String fileFileName; // 原文件名称
	private String fileContentType; // 文件类型

	// 注意：文件名称和文件类型的名称前缀必须相同，
	@Resource(name = "uploadFileService")
	private UploadFileService uploadFileService;

	private UploadFile uploadFile;

	private User user;
	private long size;
	private String url;
	private String my_uuid;
	private String fileTypeString;
	private String msg = "文件上传成功";

	@RequestMapping(value = "/file_upload", method = RequestMethod.POST)
	@ResponseBody
	public void file_upload(HttpServletResponse response, HttpServletRequest request,
			@RequestParam("file") MultipartFile file, @RequestParam("type") String type, @RequestParam("id") String id)
			throws Exception {
		System.out.println("第1阶段");
		// 获得上传时间戳
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yy-MM-dd");
		String today = format.format(date);

		if (request.getSession().getAttribute("user") != null) {
			user = (User) request.getSession().getAttribute("user");

		} else {
			throw new CustomException("登录信息错误，请重新登录");
		}

		JSONObject json = new JSONObject();
		// 获得文件的MD5
		String Auuid = UUID.randomUUID().toString();
		my_uuid = Auuid.replace("-", "");
		String mymd5 = DigestUtils.md5DigestAsHex(file.getInputStream());

		System.out.println("#########" + type);
		System.out.println(mymd5);

		fileFileName = file.getOriginalFilename();
		System.out.println("#########" + fileFileName);
		FileCheck myFileCheck = new FileCheck(file, type); // 调用FileCheck类进行文件检查
		if (myFileCheck.isCheckResult()) {
			String extensionName = fileFileName.substring(fileFileName.lastIndexOf(".")); // 获得文件类型后缀
			String newName = my_uuid + extensionName;
			fileContentType = file.getContentType();
			size = file.getSize();
			// E:/tomcat/upload/类型/日期
			url = "E:" + File.separator + "tomcat" + File.separator + "upload" + File.separator + myFileCheck.getType()
					+ File.separator + today;
			File filepath = new File(url, fileFileName);

			// 判断路径和是否存在，如果不存在就创建一个
			if (!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			// 将上传文件保存到一个目标文件当中
			file.transferTo(new File(url + File.separator + newName));
			// 以下是将结果信息存入数据库
			// upload/类型/日期/文件uuid.类型
			String sqlpath = "upload" + File.separator + myFileCheck.getType() + File.separator + today + File.separator
					+ newName;
			uploadFile = new UploadFile(); // 新建数据库对象

			uploadFile.setId(my_uuid); // Id
			uploadFile.setOnlyNewsId(id); // newsId
			uploadFile.setMd5(mymd5);
			uploadFile.setUser(user);
			uploadFile.setSize((double) size);// size
			uploadFile.setType(fileContentType);// type
			uploadFile.setUrl(sqlpath);// url
			uploadFile.setCreateTime(date);// createTime
			// 存入
			json.put("url", sqlpath);

			uploadFileService.addUploadFile(uploadFile);
			msg = "文件上传成功";
		} else {
			msg = myFileCheck.getMsg();// 文件检查错误信息
		}
		PrintWriter out = response.getWriter();

		json.put("result", msg);
		System.out.println("第6阶段");
		out.print(json);
		out.close();
	}


	@RequestMapping(value = "/file_del", method = RequestMethod.POST)
	@ResponseBody
	public void file_del(HttpServletResponse response, HttpServletRequest request,@RequestParam("id") String id) throws IOException {
		msg = null;
		String file_url;
		try {
			//获取上传文件
			UploadFile uf = uploadFileService.getUploadFileByNewsId(id).get(0);
			file_url = "E:" + File.separator + "tomcat" + File.separator + uf.getUrl();

			File file = new File(file_url);
			if(file.isFile()&& file.exists()) {
				Boolean delresponse = file.delete();
				uploadFileService.delUploadFile(uf.getId());
				if(delresponse) {
					msg = "删除成功！";
				}
			}else {
				msg = "删除失败！非正确的文件类型";
			}
		} catch (Exception e) {
			e.printStackTrace();
			msg = "删除失败，未找到该图片";
		}
		JSONObject json = new JSONObject();
		PrintWriter out = response.getWriter();
		json.put("result", msg);
		out.print(json);
		out.close();
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public UploadFile getUpload() {
		return uploadFile;
	}

	public void setUpload(UploadFile upload) {
		this.uploadFile = upload;
	}

	public UploadFileService getUploadService() {
		return uploadFileService;
	}

	public void setUploadService(UploadFileService uploadFileService) {
		this.uploadFileService = uploadFileService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUuid() {
		return my_uuid;
	}

	public void setUuid(String uuid) {
		this.my_uuid = uuid;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getFileTypeString() {
		return fileTypeString;
	}

	public void setFileTypeString(String fileTypeString) {
		this.fileTypeString = fileTypeString;
	}

}
