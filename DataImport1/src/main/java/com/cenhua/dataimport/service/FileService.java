package com.cenhua.dataimport.service;

import com.cenhua.dataimport.mapper.FileMapper;
import com.cenhua.dataimport.pojo.Files;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileService {
    @Autowired
    FileMapper fileMapper;
    public List<Files> getFileList(){
        List<Files> list = fileMapper.getFileList();
        return list;
    }
    public void setFileLists(String Filename,String Filepath){
        fileMapper.setFileList(Filename,Filepath);
    }
}
