package com.javaer.onlineReading.entity;


import java.util.Date;

/**
 * 章节实体类
 */
public class Chapter {

    /** 主键 */
    private String id;
    /** 书籍*/
    private Book book;
    /** 标题*/
    private String title;
    /** 顺序*/
    private Integer orderNo;
    /** 内容*/
    private String content;
    /** 创建时间*/
    private Date registTime;
    /** 修改时间*/
    private Date updateTime;
    /** 删除标记 0删除  1正常*/
    private String flag;
    /** 阅读量*/
    private Integer readCounts;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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


}
