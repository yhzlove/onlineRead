package com.javaer.onlineReading.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaer.onlineReading.dao.BookTypeDao;
import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.service.BookTypeService;

import java.util.List;

/**
 * 用户业务层实现接口
 */
@Service("bookTypeService")
public class BookTypeServiceImpl implements BookTypeService {

    @Autowired
    private BookTypeDao bookTypeDao;

    @Override
    public BookType getOne(String id) {
        return bookTypeDao.getById(id);
    }

    @Override
    public List<BookType> getList() {
        List<BookType> bookTypeList = bookTypeDao.getList();

        return bookTypeList;
    }

    @Override
    public int save(BookType bookType) {
        String id = bookType.getId();
        if(id == null || id == ""){
            return bookTypeDao.insert(bookType);
        }else{
            return bookTypeDao.update(bookType);
        }
    }

    public int delete(String id){
        BookType bookType = new BookType();
        bookType.setId(id);
        bookType.setFlag("0");
        return bookTypeDao.update(bookType);
    }

    @Override
    public int increaseCounts(String id) {
        return bookTypeDao.increaseCounts(id);
    }

    @Override
    public int reduceCounts(String id) {
        return bookTypeDao.reduceCounts(id);
    }
}