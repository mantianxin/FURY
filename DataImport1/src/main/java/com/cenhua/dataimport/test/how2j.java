package com.cenhua.dataimport.test;

/**
 * @author lizwl
 * @ClassName how2j
 * @create 2019-10-11 20:48
 * @desc
 **/
public class how2j {
    String name;//姓名
    int price;//价格

    public how2j(){

    }

    public static void main(String[] args){
        how2j h = new how2j();
        h.name="血瓶";
        h.price=50;

        how2j h1 = new how2j();
        h1.name= "长剑";
        h1.price = 350;

        how2j h2 = new how2j();
        h2.name = "草鞋";
        h2.price = 500;

    }
}