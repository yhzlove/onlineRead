package com.javaer.onlineReading.service.impl;


import com.javaer.onlineReading.dao.BookTypeDao;
import com.javaer.onlineReading.dao.CensorDao;
import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.entity.Censor;
import com.javaer.onlineReading.service.BookTypeService;
import com.javaer.onlineReading.service.CensorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 审查关键字业务层实现接口
 */
@Service("censorService")
public class CensorServiceImpl implements CensorService {

    @Autowired
    private CensorDao censorDao;

    @Override
    public Censor getOne(String id) {
        return censorDao.getById(id);
    }

    @Override
    public List<Censor> getList() {
        List<Censor> list = censorDao.getList();

        return list;
    }

    @Override
    public int save(Censor censor) {
        String id = censor.getId();
        if(id == null || id == ""){
            return censorDao.insert(censor);
        }else{
            return censorDao.update(censor);
        }
    }

    public int delete(String id){
        Censor censor = new Censor();
        censor.setId(id);
        censor.setFlag("0");
        return censorDao.update(censor);
    }

    @Override
    public Boolean validateStr(String str) {
        List<Censor> list = censorDao.getList();
        for (Censor censor : list) {
            String word = censor.getWord();
            if (str.contains(word)){
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        String str = "123213adsa";
        System.out.println(str.contains("12cc"));
    }

}