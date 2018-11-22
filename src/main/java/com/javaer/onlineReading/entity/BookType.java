package com.javaer.onlineReading.entity;


import java.util.Date;

/**
 * 书籍类别
 * 书籍多对一
 */
public class BookType {

    /* 书籍类别id */
    private String id;
    /* 书籍类别名称 */
    private String name;
    /* 书籍数量 */
    private Integer bookCounts;
    /** 注册时间 */
    private Date registTime;
    /** 头像 */
    private String headImg;
    /** 是否可用 */
    private String flag;
    /** 排序 */
    private Integer orderNo;
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
	public Integer getBookCounts() {
		return bookCounts;
	}
	public void setBookCounts(Integer bookCounts) {
		this.bookCounts = bookCounts;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
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
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
    
}
