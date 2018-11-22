package com.javaer.onlineReading.entity;


import java.util.Date;

/**
 * 我的书架
 */
public class Bookshelf {

    /** 主键 */
    private String id;
    /** 图书 */
    private Book book;
    /** 所属用户 */
    private User user;
    /** 创建时间 */
    private Date createTime;
    /** 状态 0删除  1正常 */
    private String flag;
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
    
    

}
