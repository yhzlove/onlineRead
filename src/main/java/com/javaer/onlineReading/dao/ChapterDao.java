package com.javaer.onlineReading.dao;


import java.util.List;

import com.javaer.onlineReading.entity.Chapter;

/**
 * 章节Dao层接口
 */
public interface ChapterDao {
    /**
     * 查询章节信息
     * @return
     */
    List<Chapter> getList();

    /**
     * 修改
     * @param chapter
     * @return
     */
    int update(Chapter chapter);

    /**
     * 新增
     * @param chapter
     * @return
     */
    int insert(Chapter chapter);

    /**
     * 根据id查询章节信息
     * @param id
     * @return
     */
    Chapter getById(String id);

    /**
     * 根据图书查询所属章节
     * @param bookId
     * @return
     */
    List<Chapter> getListByBook(String bookId);

    /**
     * 增加章节的阅读量
     * @param id
     */
    void increaseReadCounts(String id);
}
