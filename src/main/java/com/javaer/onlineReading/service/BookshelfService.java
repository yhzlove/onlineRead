package com.javaer.onlineReading.service;



import java.util.List;

import com.javaer.onlineReading.entity.Bookshelf;
import com.javaer.onlineReading.entity.User;

/**
 * 我的书架业务层  接口
 */
public interface BookshelfService {


    /**
     * 保存
     * @param bookshelf
     * @return
     */
    int save(Bookshelf bookshelf);

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
    List<Bookshelf> getListByUser(User user);


}
