package com.javaer.onlineReading.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaer.onlineReading.dao.BookDao;
import com.javaer.onlineReading.entity.Book;
import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.BookService;
import com.javaer.onlineReading.service.BookTypeService;

import java.util.List;

/**
 * 用户业务层实现接口
 */
@Service("bookService")
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;
    @Autowired
    private BookTypeService bookTypeService;

    @Override
    public Book getOne(String id) {
        return bookDao.getById(id);
    }



    @Override
    public int save(Book book) {
        String id = book.getId();
        if(id == null || id == ""){
            try {
                String typeId = book.getBookType().getId();
                bookTypeService.increaseCounts(typeId);
            }catch (Exception e){
                //System.out.println("修改图书类别数量错误!");
            }
            return bookDao.insert(book);
        }else{
            try {
                Book old_book = getOne(id);
                String old_typeId = old_book.getBookType().getId();
                String typeId = book.getBookType().getId();
                if (!typeId.equals(old_typeId)) {
                    bookTypeService.reduceCounts(old_typeId);
                    bookTypeService.increaseCounts(typeId);
                }
            }catch (Exception e){
                //System.out.println("修改图书类别数量错误!");
            }
            return bookDao.update(book);
        }
    }
    @Override
    public List<Book> getList() {
        List<Book> bookList = bookDao.getList(null);

        return bookList;
    }

    @Override
    public int delete(String id){
        Book book = new Book();
        book.setId(id);
        book.setFlag("0");
        return bookDao.update(book);
    }

    @Override
    public List<Book> getListByUser(User user) {
        Book book = new Book();
        book.setAuthor(user);
        List<Book> bookList = bookDao.getList(book);
        return bookList;
    }

    @Override
    public List<Book> getListByAdmin() {
        return getList();
    }

    @Override
    public List<Book> getListBySearch(String searchType, String searchText) {
        Book book = new Book();
        if("bookName".equals(searchType)){
            book.setName(searchText);
        }else if("author".equals(searchType)){
            User user = new User();
            user.setUserName(searchText);
            book.setAuthor(user);
        }
        List<Book> bookList = bookDao.getList(book);

        return bookList;
    }

    @Override
    public Book getOneAndIncrease(String id) {
        //1增加图书的阅读量
        bookDao.increaseReadCounts(id);
        return getOne(id);
    }

    @Override
    public List<Book> getListBybookType(String bookType){
        Book book = new Book();
        if(bookType != null) {
            BookType type = new BookType();
            type.setId(bookType);
            book.setBookType(type);
        }
        List<Book> bookList = bookDao.getList(book);

        return bookList;
    }
}