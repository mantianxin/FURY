package com.cenhua.dataimport.pojo;

import java.util.Date;

/**
 * @author JIAYUTAO
 * @ClassName Student
 * @create 2019-07-09 20:48
 * @desc
 **/
public class Student  {
    int id;
    String account;
    String passwd;
    String email;
    String nickname;
    String sex;
    Date registered;
    int status;
    int type;
    String phone;
    String idcard;
    String brief;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getRegistered() {
        return registered;
    }

    public void setRegistered(Date registered) {
        this.registered = registered;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public Student() {
    }

    public Student(int id, String account, String passwd, String email, String nickname, String sex, Date registered, int status, int type, String phone, String idcard, String brief) {
        this.id = id;
        this.account = account;
        this.passwd = passwd;
        this.email = email;
        this.nickname = nickname;
        this.sex = sex;
        this.registered = registered;
        this.status = status;
        this.type = type;
        this.phone = phone;
        this.idcard = idcard;
        this.brief = brief;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", passwd='" + passwd + '\'' +
                ", email='" + email + '\'' +
                ", nickname='" + nickname + '\'' +
                ", sex='" + sex + '\'' +
                ", registered=" + registered +
                ", status=" + status +
                ", type=" + type +
                ", phone='" + phone + '\'' +
                ", idcard='" + idcard + '\'' +
                ", brief='" + brief + '\'' +
                '}';
    }
}