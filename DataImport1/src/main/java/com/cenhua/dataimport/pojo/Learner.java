package com.cenhua.dataimport.pojo;

import java.io.Serializable;

/**
 * @author user
 * @ClassName Learner
 * @create 2019-05-30 15:25
 * @desc
 **/
public class Learner implements Serializable {

    private String sno;//编号
    private String name;//姓名
    private String age;//年龄
    private String sex;//性别
    private String address;//家庭住址
    private String bodyid;//身份证号码
    private String phone;//电话
    private String mail;//邮箱
    private String birth;//生日

    public Learner() {
    }

    public Learner(String sno, String name, String age, String sex, String address, String bodyid, String phone, String mail, String birth) {
        this.sno = sno;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.address = address;
        this.bodyid = bodyid;
        this.phone = phone;
        this.mail = mail;
        this.birth = birth;
    }

    @Override
    public String toString() {
        return "Learner{" +
                "sno='" + sno + '\'' +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", bodyid='" + bodyid + '\'' +
                ", phone='" + phone + '\'' +
                ", mail='" + mail + '\'' +
                ", birth='" + birth + '\'' +
                '}';
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBodyid() {
        return bodyid;
    }

    public void setBodyid(String bodyid) {
        this.bodyid = bodyid;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }


}