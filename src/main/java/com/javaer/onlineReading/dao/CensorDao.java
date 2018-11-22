package com.javaer.onlineReading.dao;


import com.javaer.onlineReading.entity.Censor;

import java.util.List;

/**
 * 审查关键字Dao接口
 */
public interface CensorDao {

    /**
     * 查询所有审查关键字
     * @return
     */
    List<Censor> getList();

    /**
     * 修改
     * @param censor
     * @return
     */
    int update(Censor censor);

    /**
     * 新增
     * @param censor
     * @return
     */
    int insert(Censor censor);

    /**
     * 根据ID查询
     * @param id
     * @return
     */
    Censor getById(String id);


}
