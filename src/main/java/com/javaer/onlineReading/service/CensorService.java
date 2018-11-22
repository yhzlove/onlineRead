package com.javaer.onlineReading.service;


import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.entity.Censor;

import java.util.List;

/**
 * 审查关键字业务层接口
 */
public interface CensorService {

    /**
     * 根据iD获取
     * @param id
     * @return
     */
    Censor getOne(String id);

    /**
     * 获取列表
     * @return
     */
    List<Censor> getList();

    /**
     * 保存
     * @param bookType
     * @return
     */
    int save(Censor bookType);

    /**
     * 删除
     * @param id
     * @return
     */
    int delete(String id);

    /**
     * 验证信息是否符合标准
     * @param str
     * @return
     */
    Boolean validateStr(String str);

}
