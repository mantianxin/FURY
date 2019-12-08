package com.cenhua.dataimport.pojo;

public class Files {
    String Filename;
    String Filepath;

    public String getFilename() {
        return Filename;
    }

    public void setFilename(String filename) {
        Filename = filename;
    }

    public String getFilepath() {
        return Filepath;
    }

    public void setFilepath(String Filepath) {
        Filepath = Filepath;
    }

    public Files(String filename, String Filepath) {
        Filename = filename;
        Filepath = Filepath;
    }
    public Files() {
    }
}
