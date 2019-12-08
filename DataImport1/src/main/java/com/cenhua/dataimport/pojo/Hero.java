package com.cenhua.dataimport.pojo;

/**
 * @author lizwl
 * @ClassName Hero
 * @create 2019-12-05 14:20
 * @desc
 **/
public class Hero {
    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Override
    public String toString() {
        return name;
    }

    public Hero(String name) {
        this.name = name;
    }
}