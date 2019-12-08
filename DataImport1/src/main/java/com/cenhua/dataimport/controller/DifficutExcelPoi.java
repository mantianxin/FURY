package com.cenhua.dataimport.controller;

import cn.afterturn.easypoi.excel.ExcelExportUtil;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import cn.afterturn.easypoi.excel.entity.params.ExcelExportEntity;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cenhua.dataimport.pojo.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

import java.util.*;

/**
 * 一对多导出
 */
@Controller
public class DifficutExcelPoi {
    @RequestMapping(value="/difficult")
    public void testExportExcel_1() throws Exception {
        ExportParams params = new ExportParams("0328课程表", "日期：2016-03-28", "六年一班");
        //自造数据部分
        List<StudentEntity> list1 = new ArrayList<StudentEntity>();

        //循环添加学生数据 学生数列
        StudentEntity studentEntity = null;
        for (int i = 0; i < 3; i++) {
            studentEntity = new StudentEntity();
            studentEntity.setName("测试学生00" + i);
            studentEntity.setBirthday(new Date());
            studentEntity.setRegistrationDate(new Date());
            studentEntity.setSex((i % 2 == 0 ? 1 : 2));
            list1.add(studentEntity);
        }

        //老师数据  对象添加数据  对象一
        TeacherEntity teacherEntity = new TeacherEntity();
        teacherEntity.setId("101");
        teacherEntity.setName("老王");
        teacherEntity.setMessage("初级教师");
        //                       对象二
        TeacherEntity teacherEntity1 = new TeacherEntity();
        teacherEntity1.setId("102");
        teacherEntity1.setName("老李");
        teacherEntity1.setMessage("特高级教师");

        //课程数据               课程对象一
        List<OneToTwoExcelPoi> list = new ArrayList<OneToTwoExcelPoi>();
        OneToTwoExcelPoi courseEntity = new OneToTwoExcelPoi();
        courseEntity.setId("1001");
        courseEntity.setName("计算机组成原理");
        courseEntity.setA("子辰");
        courseEntity.setStudents(list1);
        courseEntity.setMathTeacher(teacherEntity);
        list.add(courseEntity);
        //                       课程对象二
        OneToTwoExcelPoi courseEntity1 = new OneToTwoExcelPoi();
        courseEntity1.setId("1001");
        courseEntity1.setName("Oracle数据库");
        courseEntity1.setA("子辰");
        courseEntity1.setStudents(list1);
        courseEntity1.setMathTeacher(teacherEntity1);
        list.add(courseEntity1);
       Workbook workbook = ExcelExportUtil.exportExcel(params, OneToTwoExcelPoi.class,list);//courselist
        FileOutputStream fos = new FileOutputStream("D:/excel/0328课程表.xls");
        workbook.write(fos);
        fos.close();
    }


}
