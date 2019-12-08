package com.cenhua.dataimport.service;

import com.cenhua.dataimport.mapper.LearnMapper;
import com.cenhua.dataimport.pojo.Learner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author user
 * @ClassName DataService
 * @create 2019-07-10 16:11
 * @desc
 **/
@Service
public class DataService {

    @Autowired
    private LearnMapper learnMapper;

    public void insertObject(List<Learner> list) {
        try {
            for (Learner learner : list) {
                learnMapper.insertObject(learner);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}