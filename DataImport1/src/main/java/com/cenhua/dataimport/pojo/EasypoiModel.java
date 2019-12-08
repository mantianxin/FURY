package com.cenhua.dataimport.pojo;

public class EasypoiModel {
    private int id;
    private String project;
    private String name;
    private String sex;
    private int age;
    public EasypoiModel(){

    }
    public EasypoiModel(int id, String project, String name, String sex, int age) {
        this.id = id;
        this.project = project;
        this.name = name;
        this.sex = sex;
        this.age = age;
    }
}
