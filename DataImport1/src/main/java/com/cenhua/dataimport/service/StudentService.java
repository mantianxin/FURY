package com.cenhua.dataimport.service;

import com.cenhua.dataimport.mapper.StudentMapper;
import com.cenhua.dataimport.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author JIAYUTAO
 * @interface StudentService
 * @create 2019-07-10 20:58
 * @desc
 **/
@Service
public class StudentService {

    @Autowired
    private StudentMapper studentMapper;

    public List<Student> getStudentList() {
        List<Student> studentList = studentMapper.getStudentList();
        return studentList;
    }

}
