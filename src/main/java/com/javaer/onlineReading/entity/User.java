package com.javaer.onlineReading.entity;


import java.util.Date;

/**
 * 用户
 */
public class User {

    /* 用户id */
    private String id;
    /* 登入名 */
    private String loginName;
    /* 用户名 */
    private String userName;
    /* 密码 */
    private String password;
    /* 角色 管理员admin-作者author-会员-member*/
    private String role;
    /** 注册时间 */
    private Date registTime;
    /** 头像 */
    private String headImg;
    /** 是否可用 */
    private String flag;
    /** 描述 */
    private String description;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
    
    
}
