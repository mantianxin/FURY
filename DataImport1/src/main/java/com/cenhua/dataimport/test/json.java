package com.cenhua.dataimport.test;

import com.alibaba.fastjson.JSONObject;
import com.cenhua.dataimport.pojo.User;

import java.util.HashMap;
import java.util.Map;

/**
 * @author lizwl
 * @ClassName json
 * @create 2019-11-25 8:47
 * @desc
 * 简单创造json数据
 **/
public class json {
    public static void main(String args[]){
        json js = new json();
        js.testMap();
    }
    public void testMap(){
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("name", "qiu");
        map.put("password", "123");
        map.put("address", "china");

        User user = new User();
        user.setName("qiuqiu");//("qiuqiu");
        user.setPassword("123456");


        map.put("user", user);

        JSONObject json = new JSONObject(map);
        System.out.println(json.toString());
    }
}