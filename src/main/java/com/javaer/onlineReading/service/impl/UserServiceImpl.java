package com.javaer.onlineReading.service.impl;


import org.apache.ibatis.annotations.Param;
import org.aspectj.apache.bcel.generic.FieldOrMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaer.onlineReading.dao.UserDao;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.UserService;

import java.util.List;

/**
 * 用户业务层实现接口
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User login(String loginName){
        List<User> userList = userDao.getUserByLoginName(loginName);
        if(userList.isEmpty()){
            return null;
        }
        return userList.get(0);
    }

    @Override
    public User getOne(String id) {
        return userDao.getById(id);
    }

    @Override
    public int save(User user) {
         String id = user.getId();
        if(id == null || id == ""){
            return userDao.insert(user);
        }else{
            return userDao.update(user);
        }
    }

    @Override
    public List<User> getList() {
        List<User> userList = userDao.getList();

        return userList;
    }

    @Override
    public int delete(String id){
        User user = new User();
        user.setId(id);
        user.setFlag("0");
        return userDao.update(user);
    }
}