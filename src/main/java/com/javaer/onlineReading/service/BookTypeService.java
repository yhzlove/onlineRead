package com.javaer.onlineReading.service;



import java.util.List;

import com.javaer.onlineReading.entity.BookType;

/**
 * 类别业务层接口
 */
public interface BookTypeService {

    /**
     * 根据iD获取
     * @param id
     * @return
     */
    BookType getOne(String id);

    /**
     * 获取列表
     * @return
     */
    List<BookType> getList();

    /**
     * 保存
     * @param bookType
     * @return
     */
    int save(BookType bookType);

    /**
     * 删除
     * @param id
     * @return
     */
    int delete(String id);

    /**
     * +1
     * @param id
     * @return
     */
    int increaseCounts(String id);

    /**
     * -1
     * @param id
     * @return
     */
    int reduceCounts(String id);

}
