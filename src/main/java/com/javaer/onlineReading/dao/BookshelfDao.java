package com.javaer.onlineReading.dao;


import java.util.List;

import com.javaer.onlineReading.entity.Bookshelf;
import com.javaer.onlineReading.entity.User;

/**
 * 我的书架Dao层接口
 */
public interface BookshelfDao {

    /**
     * 查询我的书架信息
     * @param user
     * @return
     */
    List<Bookshelf> getListByUser(User user);

    /**
     * 修改
     * @param bookshelf
     * @return
     */
    int update(Bookshelf bookshelf);

    /**
     * 新增
     * @param bookshelf
     * @return
     */
    int insert(Bookshelf bookshelf);

}
