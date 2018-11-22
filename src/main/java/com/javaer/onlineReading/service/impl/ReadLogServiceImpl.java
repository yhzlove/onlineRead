package com.javaer.onlineReading.service.impl;


import com.javaer.onlineReading.dao.CensorDao;
import com.javaer.onlineReading.dao.ReadLogDao;
import com.javaer.onlineReading.entity.Censor;
import com.javaer.onlineReading.entity.Chapter;
import com.javaer.onlineReading.entity.ReadLog;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.CensorService;
import com.javaer.onlineReading.service.ReadLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 审查关键字业务层实现接口
 */
@Service("readLogService")
public class ReadLogServiceImpl implements ReadLogService {

    @Autowired
    private ReadLogDao readLogDao;


    @Override
    public List<ReadLog> getList(ReadLog readLog) {
        List<ReadLog> list = readLogDao.getList(readLog);

        return list;
    }

    @Override
    public int save(ReadLog readLog) {
        return readLogDao.insert(readLog);

    }

    @Override
    public int save(User user, Chapter chapter) {
        ReadLog readLog = new ReadLog();
        readLog.setBook(chapter.getBook());
        readLog.setUser(user);
        readLog.setChapter(chapter);
        readLog.setReadDate(new Date());
        return save(readLog);
    }


}