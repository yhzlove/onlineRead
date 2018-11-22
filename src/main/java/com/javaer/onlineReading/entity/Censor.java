package com.javaer.onlineReading.entity;


import java.util.Date;

/**
 * 审查模糊字
 */
public class Censor {

    /** 主键 */
    private String id;
    /** 关键字*/
    private String word;
    /** 创建时间 */
    private Date registTime;
    /** 是否可用 0删除  1正常*/
    private String flag;

    public Date getRegistTime() {
        return registTime;
    }

    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }
}
