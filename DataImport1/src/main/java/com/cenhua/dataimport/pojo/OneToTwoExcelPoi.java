package com.cenhua.dataimport.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;
import cn.afterturn.easypoi.excel.annotation.ExcelCollection;
import cn.afterturn.easypoi.excel.annotation.ExcelEntity;
import cn.afterturn.easypoi.excel.annotation.ExcelTarget;

import java.util.List;

/**
 * 牵扯类
 *       学生类 StudentEntity
 *       老师类 TeacherEntity
 */
/**
 * 课程类
 */
@ExcelTarget("OneToTwoExcelPoi")
public class OneToTwoExcelPoi implements java.io.Serializable{
    /** 主键 */
    private String        id;
    /** 课程名称 */
    @Excel(name = "课程名称", orderNum = "1", width = 25)
    private String        name;
    @Excel(name="课程批次",orderNum = "5",needMerge = true,width = 25)//orderNum属性是用来标记这个属性是第几列 因为orderNum=5时，会出现课程批次这一列会到学生列后面  就是规定
    private String a;
    /** 老师主键 */
    @ExcelEntity(id = "absent")  //标记是不是导出excel 标记为实体类,一遍是一个内部属性类,标记是否继续穿透,可以自定义内部id
    private TeacherEntity mathTeacher;
    //一个课程名称对应多个学生
    //对于一对多来说课程的所有属性都对应多个学生 并且不用合并needMerge属性
    @ExcelCollection(name = "学生", orderNum = "4")// 一对多的集合注解,用以标记集合是否被数据以及集合的整体排序       orderNum   列的排序,支持name_id
    private List<StudentEntity> students;

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

    public TeacherEntity getMathTeacher() {
        return mathTeacher;
    }

    public void setMathTeacher(TeacherEntity mathTeacher) {
        this.mathTeacher = mathTeacher;
    }

    public List<StudentEntity> getStudents() {
        return students;
    }

    public void setStudents(List<StudentEntity> students) {
        this.students = students;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public OneToTwoExcelPoi(String id, String name, String a, TeacherEntity mathTeacher, List<StudentEntity> students) {
        this.id = id;
        this.name = name;
        this.a = a;
        this.mathTeacher = mathTeacher;
        this.students = students;
    }

    public OneToTwoExcelPoi() {
    }
}
