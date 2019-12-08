package com.cenhua.dataimport.test;

/**
 * @author lizwl
 * @ClassName TimeConvert
 * @create 2019-11-21 14:00
 * @desc
 **/
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

//import org.apache.commons.validator.Var;
import org.junit.Test;
import org.omg.CORBA.PRIVATE_MEMBER;

import com.sun.org.apache.xerces.internal.parsers.IntegratedParserConfiguration;

//import IceInternal.Time;
import sun.util.logging.resources.logging;

/*
 * @author xiaoyi
 * @see 倒计时转化工具类
 */
public class TimeConvert {

    private final static Long DEFAULT_TIME=(long) (30*60*1000);  //超时时间


    /*
     * @see 将字符串转化为时间格式
     */
    public static Date convertStrToDate(String strDate){
        Calendar calendar=Calendar.getInstance();
        if(strDate != null){
            String[] dateAndTime=strDate.split(" ");
            String[] dateStr=dateAndTime[0].split("-");
            String[] TimeStr=dateAndTime[1].split(":");
            calendar.set(Integer.parseInt(dateStr[0]), Integer.parseInt(dateStr[1])-1, Integer.parseInt(dateStr[2]),
                    Integer.parseInt(TimeStr[0]), Integer.parseInt(TimeStr[1]), Integer.parseInt(TimeStr[2]));
        }
        return calendar.getTime();
    }

    /*
     * 左边添加0
     */
    public static String addLeftZero(Long tempNum){
        String num="00";
        if(tempNum<10){
            num="0"+tempNum;
        }else if(tempNum==0){
            num= "00";
        }else{
            num=""+tempNum;
        }

        return num;
    }

    /*
     * //将毫秒数转化为倒计时 eg :29:30
     */
    public static String  formatDate(Long num){
        String tem="00:00";
        if(num>0){
            Long minute=num/60/1000;
            Long yushu=num%(60*1000);
            Long second=yushu/1000;
            tem= TimeConvert.addLeftZero(minute)+":"+TimeConvert.addLeftZero(second);
        }else{
            tem= "00:00";
        }
        return tem;
    }


    /*
     * 计算还剩多少时间
     */
    public String calculateTime(String initTime){
        String  remainTime="00:00"; //剩余时间
        if(initTime !=null){
            Date nowDate=new Date();
            Long timeLength=(long) (TimeConvert.convertStrToDate(initTime).getTime()+DEFAULT_TIME-nowDate.getTime()); //求当时间和下单时间的差（毫秒）
            remainTime=TimeConvert.formatDate(timeLength);
        }
        return remainTime;
    }

    //测试
    public static void main(String[] args) {
        TimeConvert timeConvert=new TimeConvert();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(new TimeConvert().calculateTime("2019-11-21 15:13:00"));//显示时间差

    }

}