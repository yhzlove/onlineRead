package com.javaer.onlineReading.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaer.onlineReading.dao.BookshelfDao;
import com.javaer.onlineReading.entity.Bookshelf;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.BookshelfService;

import java.util.List;

/**
 * 我的书架业务层实现接口
 */
@Service("bookshelfService")
public class BookshelfServiceImpl implements BookshelfService {

    @Autowired
    private BookshelfDao bookshelfDao;

    @Override
    public int save(Bookshelf bookshelf) {
        String id = bookshelf.getId();
        if(id == null || id == ""){
            return bookshelfDao.insert(bookshelf);
        }else{
            return bookshelfDao.update(bookshelf);
        }
    }


    @Override
    public int delete(String id){
        Bookshelf bookshelf = new Bookshelf();
        bookshelf.setId(id);
        bookshelf.setFlag("0");
        return bookshelfDao.update(bookshelf);
    }

    @Override
    public List<Bookshelf> getListByUser(User user) {
        List<Bookshelf> bookshelfList = bookshelfDao.getListByUser(user);
        return bookshelfList;
    }

}