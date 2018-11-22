package com.javaer.onlineReading.service;


import com.javaer.onlineReading.entity.Censor;
import com.javaer.onlineReading.entity.Chapter;
import com.javaer.onlineReading.entity.ReadLog;
import com.javaer.onlineReading.entity.User;

import java.util.List;

/**
 * 阅读历史业务层接口
 */
public interface ReadLogService {



    /**
     * 获取列表
     * @return
     */
    List<ReadLog> getList(ReadLog readLog);

    /**
     * 保存
     * @param readLog
     * @return
     */
    int save(ReadLog readLog);

    int save(User user, Chapter chapter);


}
