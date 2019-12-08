package com.cenhua.dataimport.mapper;

import com.cenhua.dataimport.pojo.Files;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FileMapper {
    public List<Files> getFileList();
    public void setFileList(@Param("filename") String filename, @Param("filepath") String filepath);
}
