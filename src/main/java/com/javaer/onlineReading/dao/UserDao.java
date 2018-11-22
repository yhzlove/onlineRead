package com.javaer.onlineReading.dao;

import org.apache.ibatis.annotations.Param;

import com.javaer.onlineReading.entity.User;

import java.util.List;

/**
 * 用户Dao层接口
 */
public interface UserDao {
    /**
     * 根据登录名称查询用户信息
     * 登录用到
     * @param loginName
     * @return
     */
    List<User> getUserByLoginName(@Param("loginName") String loginName);

    /**
     * 用户列表
     * @return
     */
    List<User> getList();

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    int update(User user);

    /**
     * 新增
     * @param user
     * @return
     */
    int insert(User user);

    /**
     * 根据id查询用户信息
     * @param id
     * @return
     */
    User getById(String id);
}
