package com.javaer.onlineReading.service;



import java.util.List;

import com.javaer.onlineReading.entity.Chapter;

/**
 * 图书/书籍业务层接口
 */
public interface ChapterService {

    Chapter getOne(String id);

    List<Chapter> getList();

    int save(Chapter chapter);

    int delete(String id);

    List<Chapter> getListByBook(String bookId);

    /**
     * 前台查询章节信息
     * 增加章节的阅读量/增加图书的阅读量
     * @param id
     * @return
     */
    Chapter getOneAndIncrease(String id);
}
