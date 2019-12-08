package com.cenhua.dataimport.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class Customer implements java.io.Serializable{
    @Excel(name = "编号", width = 25)
     String id;

    @Excel(name = "姓名", width = 25)
     String name;

    @Excel(name = "性别", width = 10)
     String sex;

    @Excel(name = "年龄", width = 40)
     int age;
    @Excel(name = "n1", width = 25)
     String n1;

    @Excel(name = "n2", width = 25)
     String n2;

    @Excel(name = "n3", width = 10)
     String n3;

    @Excel(name = "n4", width = 40)
     int n4;

    @Excel(name = "n5", width = 25)
     int n5;

    @Excel(name = "n6", width = 25)
     String n6;

    @Excel(name = "n7", width = 10)
     String n7;

    @Excel(name = "n8", width = 40)
     String n8;
    @Excel(name = "n9", width = 25)
     String n9;

    @Excel(name = "n10", width = 25)
     String n10;

    @Excel(name = "n11", width = 10)
     String n11;

    @Excel(name = "n12", width = 40)
     String n12;

    @Excel(name = "n13", width = 10)
     String n13;

    @Excel(name = "n14", width = 40)
     String n14;

    @Excel(name = "n15", width = 40)
     String n15;

    //有参构造方法 Constructor
    public Customer(String id, String name, String sex, int age, String n1, String n2, String n3, int n4, int n5, String n6, String n7, String n8, String n9, String n10, String n11, String n12, String n13, String n14,String n15) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;
        this.n4 = n4;
        this.n5 = n5;
        this.n6 = n6;
        this.n7 = n7;
        this.n8 = n8;
        this.n9 = n9;
        this.n10 = n10;
        this.n11 = n11;
        this.n12 = n12;
        this.n13 = n13;
        this.n14 = n14;
        this.n15 = n15;
    }
    public Customer(){
    }

    public String getN15() {
        return n15;
    }

    public void setN15(String n15) {
        this.n15 = n15;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSex() {
        return sex;
    }

    public int getAge() {
        return age;
    }

    public String getN1() {
        return n1;
    }

    public String getN2() {
        return n2;
    }

    public String getN3() {
        return n3;
    }

    public int getN4() {
        return n4;
    }

    public int getN5() {
        return n5;
    }

    public String getN6() {
        return n6;
    }

    public String getN7() {
        return n7;
    }

    public String getN8() {
        return n8;
    }

    public String getN9() {
        return n9;
    }

    public String getN10() {
        return n10;
    }

    public String getN11() {
        return n11;
    }

    public String getN12() {
        return n12;
    }

    public String getN13() {
        return n13;
    }

    public String getN14() {
        return n14;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setN1(String n1) {
        this.n1 = n1;
    }

    public void setN2(String n2) {
        this.n2 = n2;
    }

    public void setN3(String n3) {
        this.n3 = n3;
    }

    public void setN4(int n4) {
        this.n4 = n4;
    }

    public void setN5(int n5) {
        this.n5 = n5;
    }

    public void setN6(String n6) {
        this.n6 = n6;
    }

    public void setN7(String n7) {
        this.n7 = n7;
    }

    public void setN8(String n8) {
        this.n8 = n8;
    }

    public void setN9(String n9) {
        this.n9 = n9;
    }

    public void setN10(String n10) {
        this.n10 = n10;
    }

    public void setN11(String n11) {
        this.n11 = n11;
    }

    public void setN12(String n12) {
        this.n12 = n12;
    }

    public void setN13(String n13) {
        this.n13 = n13;
    }

    public void setN14(String n14) {
        this.n14 = n14;
    }

}
