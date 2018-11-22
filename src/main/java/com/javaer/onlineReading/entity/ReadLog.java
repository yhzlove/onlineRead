package com.javaer.onlineReading.entity;

import java.util.Date;

/**
 * 阅读历史（谁在什么时间读了那本书的那个章节）
 */
public class ReadLog {
    /** 主键 */
    private String id;
    /** 读者 */
    private User user;
    /** 书籍 */
    private Book book;
    /* 章节 */
    private Chapter chapter;
    /** 阅读时间 */
    private Date readDate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    public Date getReadDate() {
        return readDate;
    }

    public void setReadDate(Date readDate) {
        this.readDate = readDate;
    }
}
