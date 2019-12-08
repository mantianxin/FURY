package com.cenhua.dataimport.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;
import cn.afterturn.easypoi.excel.annotation.ExcelTarget;

@ExcelTarget("teacherEntity")
public class TeacherEntity implements java.io.Serializable {
    private String id;
    /** name */
    //课程与老师是一对一的  老师与学生是一对多  课程与学生是一对多
    @Excel(name = "主讲老师_major,代课老师_absent", orderNum = "1",isImportField = "true_major,true_absent",needMerge = true)
    private String name;
    @Excel(name = "职称", orderNum = "1")  //needMerge 是一对多的列才能进行合并单元格
                                                                //普通合并用mergeVertical
    private String message;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public TeacherEntity(String id, String name, String message) {
        this.id = id;
        this.name = name;
        this.message = message;
    }

    public TeacherEntity(){

    }
}
