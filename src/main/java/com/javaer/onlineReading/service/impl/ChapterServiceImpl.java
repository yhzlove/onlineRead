package com.javaer.onlineReading.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaer.onlineReading.dao.BookDao;
import com.javaer.onlineReading.dao.ChapterDao;
import com.javaer.onlineReading.entity.Book;
import com.javaer.onlineReading.entity.Chapter;
import com.javaer.onlineReading.service.ChapterService;

import java.util.List;

/**
 * 章节业务层实现接口
 */
@Service("chapterService")
public class ChapterServiceImpl implements ChapterService {

    @Autowired
    private ChapterDao chapterDao;
    @Autowired
    private BookDao bookDao;

    @Override
    public Chapter getOne(String id) {
        return chapterDao.getById(id);
    }



    @Override
    public int save(Chapter chapter) {
        String id = chapter.getId();
        if(id == null || id == ""){
            return chapterDao.insert(chapter);
        }else{
            return chapterDao.update(chapter);
        }
    }
    @Override
    public List<Chapter> getList() {
        List<Chapter> chapterList = chapterDao.getList();

        return chapterList;
    }


    @Override
    public int delete(String id){
        Chapter chapter = new Chapter();
        chapter.setId(id);
        chapter.setFlag("0");
        return chapterDao.update(chapter);
    }

    @Override
    public List<Chapter> getListByBook(String bookId) {
        List<Chapter> chapterList = chapterDao.getListByBook(bookId);

        return chapterList;
    }

    @Override
    public Chapter getOneAndIncrease(String id) {
        //1增加章节的阅读量
        chapterDao.increaseReadCounts(id);
        Chapter chapter = getOne(id);
        Book book = chapter.getBook();
        String bookId = book.getId();
        //2增加图书的阅读量
        bookDao.increaseReadCounts(bookId);
        return chapter;
    }
}