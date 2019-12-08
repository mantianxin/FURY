package com.cenhua.dataimport.controller;

import com.alibaba.fastjson.JSON;
import com.cenhua.dataimport.pojo.Learner;
import com.cenhua.dataimport.pojo.Student;
import com.cenhua.dataimport.service.DataService;
import com.cenhua.dataimport.service.StudentService;
import com.cenhua.dataimport.utils.ResultEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author user
 * @ClassName DataController
 * @create 2019-07-10 16:10
 * @desc
 **/
@Controller
public class DataController {

    @Autowired
    private DataService dataService;

    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/addLearnList", method = RequestMethod.POST)
    @ResponseBody
    public String addLearnList(@RequestBody List<Learner> learnList) {
        System.out.println();
        try {
            dataService.insertObject(learnList);

        } catch (Exception e) {
            e.printStackTrace();
            return JSON.toJSONString(new ResultEntry<String>(500, "数据添加失败了！", "ERROR！"));
        }
        return JSON.toJSONString(new ResultEntry<String>(200, "已经为你成功导入20条测试数据！", "SUCCESS"));
    }

    @RequestMapping(value = "/list",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String queryList() {
        List<Student> studentList = studentService.getStudentList();
        return JSON.toJSONString(studentList);
    }
}