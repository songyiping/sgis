package com.sgis.entity;
/**
 * 
 * @version 1.0.0
 * 创建时间：2018年7月24日
 * 功能描述：基础类，新闻类型
 */
public class NewsType {
    private String newsTypeId;

    private String newsTypeName;

    private String fatherId;
    
    private Integer picEnable;
    
    private Integer videoEnable;

    private SystemFile listFile;

    private SystemFile checkFile;

    private SystemFile manageFile;

    private SystemFile addFile;

    private SystemFile editFile;

    private Integer isVisible;

    private Integer isDelete;

    private String remark;

    public String getNewsTypeId() {
        return newsTypeId;
    }

    public void setNewsTypeId(String newsTypeId) {
        this.newsTypeId = newsTypeId == null ? null : newsTypeId.trim();
    }

    public String getNewsTypeName() {
        return newsTypeName;
    }

    public void setNewsTypeName(String newsTypeName) {
        this.newsTypeName = newsTypeName == null ? null : newsTypeName.trim();
    }

    public String getFatherId() {
        return fatherId;
    }

    public void setFatherId(String fatherId) {
        this.fatherId = fatherId == null ? null : fatherId.trim();
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

	public SystemFile getListFile() {
		return listFile;
	}

	public void setListFile(SystemFile listFile) {
		this.listFile = listFile;
	}

	public SystemFile getCheckFile() {
		return checkFile;
	}

	public void setCheckFile(SystemFile checkFile) {
		this.checkFile = checkFile;
	}

	public SystemFile getManageFile() {
		return manageFile;
	}

	public void setManageFile(SystemFile manageFile) {
		this.manageFile = manageFile;
	}

	public SystemFile getAddFile() {
		return addFile;
	}

	public void setAddFile(SystemFile addFile) {
		this.addFile = addFile;
	}

	public SystemFile getEditFile() {
		return editFile;
	}

	public void setEditFile(SystemFile editFile) {
		this.editFile = editFile;
	}

	public Integer getPicEnable() {
		return picEnable;
	}

	public void setPicEnable(Integer picEnable) {
		this.picEnable = picEnable;
	}

	public Integer getVideoEnable() {
		return videoEnable;
	}

	public void setVideoEnable(Integer videoEnable) {
		this.videoEnable = videoEnable;
	}

	
}