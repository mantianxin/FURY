package com.cenhua.dataimport.utils;

/**
 * @author user
 * @ClassName ResultEntry
 * @create 2019-06-04 11:10
 * @desc
 **/
public class ResultEntry<T> {
    private int status;
    private String msg;

    @Override
    public String toString() {
        return "ResultEntry{" +
                "status=" + status +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }

    private T data;

    public ResultEntry(int status, String msg, T data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}