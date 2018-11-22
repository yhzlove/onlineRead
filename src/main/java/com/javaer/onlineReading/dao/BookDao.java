package com.javaer.onlineReading.dao;

import org.apache.ibatis.annotations.Param;

import com.javaer.onlineReading.entity.Book;

import java.util.List;

/**
 * Created by Administrator on 2018-02-28.
 */
public interface BookDao {

    /**
     * 查询图书信息
     * @param book
     * @return
     */
    List<Book> getList(Book book);

    /**
     * 修改
     * @param book
     * @return
     */
    int update(Book book);

    /**
     * 新增
     * @param book
     * @return
     */
    int insert(Book book);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    Book getById(String id);

    /**
     * 增加图书的阅读量
     * @param id
     */
    void increaseReadCounts(String id);
}
