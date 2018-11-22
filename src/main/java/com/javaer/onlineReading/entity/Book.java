package com.javaer.onlineReading.entity;


import java.util.Date;

/**
 * 图书实体类
 */
public class Book {

    /* 书籍id */
    private String id;
    /* 书籍名称 */
    private String name;
    /* 简称 */
    private String simpleName;
    /* 作者(User) */
    private User author;
    /* 描述 */
    private String description;
    /* 书籍类别 */
    private BookType bookType;
    /** 创建时间 */
    private Date registTime;
    /** 修改时间 */
    private Date updateTime;
    /** 审核通过时间 */
    private Date checkTime;
    /** 是否审核通过 0未审核  1审核通过   2审核不通过*/
    private String checkFlag;
    /** 审核不通过*/
    private String checkFail;
    /** 封面 */
    private String headImg;
    /** 是否可用 0删除  1正常*/
    private String flag;
    /** 阅读量 */
    private Integer readCounts;
    /** 是否推荐  1推荐  0未推荐 */
    private Integer recommend;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSimpleName() {
		return simpleName;
	}
	public void setSimpleName(String simpleName) {
		this.simpleName = simpleName;
	}
	public User getAuthor() {
		return author;
	}
	public void setAuthor(User author) {
		this.author = author;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public BookType getBookType() {
		return bookType;
	}
	public void setBookType(BookType bookType) {
		this.bookType = bookType;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	public String getCheckFlag() {
		return checkFlag;
	}
	public void setCheckFlag(String checkFlag) {
		this.checkFlag = checkFlag;
	}
	public String getCheckFail() {
		return checkFail;
	}
	public void setCheckFail(String checkFail) {
		this.checkFail = checkFail;
	}
	public String getHeadImg() {
		return headImg;
	}
	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public Integer getReadCounts() {
		return readCounts;
	}
	public void setReadCounts(Integer readCounts) {
		this.readCounts = readCounts;
	}
	public Integer getRecommend() {
		return recommend;
	}
	public void setRecommend(Integer recommend) {
		this.recommend = recommend;
	}
    
    
}
