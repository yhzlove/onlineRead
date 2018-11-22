package com.javaer.onlineReading.service;



import java.util.List;

import com.javaer.onlineReading.entity.User;

/**
 * 用户业务层接口
 */
public interface UserService {
    /**
     * 登入
     * @param loginName 登入名
     * @return 登入用户
     */
    User login(String loginName);

    User getOne(String id);

    int save(User user);

    List<User> getList();

    int delete(String id);
}
