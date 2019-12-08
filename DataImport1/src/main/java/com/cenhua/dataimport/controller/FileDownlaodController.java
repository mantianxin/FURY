package com.cenhua.dataimport.controller;

import com.cenhua.dataimport.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.cenhua.dataimport.pojo.Files;
import java.io.File;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class FileDownlaodController extends HttpServlet {
    @Autowired
    FileService fileService;
    @RequestMapping(value="/DownloadListFiles")
    public ModelAndView listFile(){
        ArrayList<String> listFileName = new ArrayList<String>();
        ModelAndView mav = new ModelAndView();
        getAllFileName("D:\\桌面资料\\表格操作程序+测试资料\\maven依赖问题未解决\\DataImport1\\target\\dataImport-1.0-SNAPSHOT\\download\\",listFileName);
        for(String st :listFileName){
            System.out.println("文件路径名称为");
            System.out.println(st);
            String sts = st.substring(85);
            System.out.println(sts);
            fileService.setFileLists(sts,st);
        }
        List<Files> lists  = fileService.getFileList();
        mav.addObject("FileList",lists);
        mav.setViewName("download");
        return mav;
    }
    void getAllFileName(String path, ArrayList<String> listFileName){
        File file = new File(path);
        File [] files = file.listFiles();
        String [] names = file.list();
        if(names != null){
            String [] completNames = new String[names.length];
            for(int i=0;i<names.length;i++){
                completNames[i]=path+names[i];
            }
            listFileName.addAll(Arrays.asList(completNames));
        }
    }
   @RequestMapping(value="/dfs")
    public ModelAndView download(@PathVariable("filename") String filename, HttpServletRequest request, HttpServletResponse response)throws IOException {//修改意见：可以从数据库查找所需字段

       ModelAndView mav = new ModelAndView();
       mav.setViewName("Success");
       return mav;
   }
}
