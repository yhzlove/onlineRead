package com.javaer.onlineReading.service;



import java.util.List;

import com.javaer.onlineReading.entity.Book;
import com.javaer.onlineReading.entity.User;

/**
 * 图书业务层接口
 */
public interface BookService {
    /**
     * 根据id查询
     * @param id
     * @return
     */
    Book getOne(String id);

    /**
     * 列表
     * @return
     */
    List<Book> getList();

    /**
     * 保存
     * @param book
     * @return
     */
    int save(Book book);

    /**
     * 删除
     * @param id
     * @return
     */
    int delete(String id);

    /**
     * 查询用户下所有的图书信息
     * @param user 用户
     * @return
     */
    List<Book> getListByUser(User user);

    /**
     * 管理员查询图书信息
     * @return
     */
    List<Book> getListByAdmin();

    /**
     * 前台查询页面
     * @param searchType 类型
     * @param searchText
     * @return
     */
    List<Book> getListBySearch(String searchType, String searchText);

    /**
     * 前台图书详情查询  并增加阅读量
     * @param id
     * @return
     */
    Book getOneAndIncrease(String id);

    /**
     * 根据类型查询
     * @param bookType
     * @return
     */
    List<Book> getListBybookType(String bookType);
}
