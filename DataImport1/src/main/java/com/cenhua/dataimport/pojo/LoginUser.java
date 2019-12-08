package com.cenhua.dataimport.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author lizwl
 * @ClassName LoginUser
 * @create 2019-09-10 22:20
 * @desc
 **/
public class LoginUser {
    private String  Uname;//姓名
    private String  Usex;//性别
    private String Upassword;//密码
    private String Uemail;//邮箱
    private String Uphonenumber;//电话
    private String Uaddress;//居住地址
    private String Love;//爱好
    private String Umajor;//职业
    @DateTimeFormat(pattern = "yyyy-MM-dd")  //可以完成前端数据传到后端为date类型
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="Asia/Shanghai")
    private Date   Ustarttime;//注册时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="Asia/Shanghai")
    private Date   Uendtime;//销户时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="Asia/Shanghai")
    private Date   Ubirthday;//生日

    public String getUname() {
        return Uname;
    }

    public void setUname(String uname) {
        Uname = uname;
    }

    public String getUsex() {
        return Usex;
    }

    public void setUsex(String usex) {
        Usex = usex;
    }

    public String getUpassword() {
        return Upassword;
    }

    public void setUpassword(String upassword) {
        Upassword = upassword;
    }

    public String getUemail() {
        return Uemail;
    }

    public void setUemail(String uemail) {
        Uemail = uemail;
    }

    public String getUphonenumber() {
        return Uphonenumber;
    }

    public void setUphonenumber(String uphonenumber) {
        Uphonenumber = uphonenumber;
    }

    public String getUaddress() {
        return Uaddress;
    }

    public void setUaddress(String uaddress) {
        Uaddress = uaddress;
    }

    public String getLove() {
        return Love;
    }

    public void setLove(String love) {
        Love = love;
    }

    public String getUmajor() {
        return Umajor;
    }

    public void setUmajor(String umajor) {
        Umajor = umajor;
    }

    public Date getUstarttime() {
        return Ustarttime;
    }

    public void setUstarttime(Date ustarttime) {
        Ustarttime = ustarttime;
    }

    public Date getUendtime() {
        return Uendtime;
    }

    public void setUendtime(Date uendtime) {
        Uendtime = uendtime;
    }

    public Date getUbirthday() {
        return Ubirthday;
    }

    public void setUbirthday(Date ubirthday) {
        Ubirthday = ubirthday;
    }
}