package com.javaer.onlineReading.dao;


import com.javaer.onlineReading.entity.Chapter;
import com.javaer.onlineReading.entity.ReadLog;

import java.util.List;

/**
 * 阅读记录Dao层接口
 */
public interface ReadLogDao {
    /**
     * 查询章节信息
     * @return
     */
    List<ReadLog> getList(ReadLog readLog);

    /**
     * 新增
     * @param chapter
     * @return
     */
    int insert(ReadLog readLog);


}
