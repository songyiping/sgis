package com.sgis.entity;

import java.util.Date;
/**
 * @version 1.0.0
 * 创建时间：2018年7月24日
 * 功能描述：基础类，上传文件信息
 */
public class UploadFile {
    private String fileId;
    private String onlyNewsId; //非对象
    private Date createTime;

    private Date lastTime;

    private String md5;

    private String url;

    private User user;

    private Double size;

    private String type;

    private Integer isVisible;

    private Integer isDelete;

    private Date startTime;

    private Date endTime;

    public String getId() {
        return fileId;
    }

    public void setId(String id) {
        this.fileId = id == null ? null : id.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public String getMd5() {
        return md5;
    }

    public void setMd5(String md5) {
        this.md5 = md5 == null ? null : md5.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    

    public Double getSize() {
        return size;
    }

    public void setSize(Double size) {
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getIsVisible() {
        return isVisible;
    }

    public void setIsVisible(Integer isVisible) {
        this.isVisible = isVisible;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getOnlyNewsId() {
		return onlyNewsId;
	}

	public void setOnlyNewsId(String onlyNewsId) {
		this.onlyNewsId = onlyNewsId;
	}
}