package com.javaer.onlineReading.dao;


import java.util.List;

import com.javaer.onlineReading.entity.BookType;

/**
 * 图书类别Dao接口
 */
public interface BookTypeDao {

    /**
     * 查询图书类别信息
     * @return
     */
    List<BookType> getList();

    /**
     * 修改
     * @param bookType
     * @return
     */
    int update(BookType bookType);

    /**
     * 新增
     * @param bookType
     * @return
     */
    int insert(BookType bookType);

    /**
     * 根据ID查询
     * @param id
     * @return
     */
    BookType getById(String id);

    /**
     * +1
     * @param id
     * @return
     */
    int increaseCounts(String id);
    /**
     * -1
     * @param id
     * @return
     */
    int reduceCounts(String id);
}
