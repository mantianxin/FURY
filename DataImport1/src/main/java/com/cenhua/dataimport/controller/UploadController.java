package com.cenhua.dataimport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.io.File;

@Controller
public class UploadController {
    @RequestMapping(value = "/upload")
    public String upload(HttpServletRequest request,
                         @RequestParam("file") MultipartFile[] file, ModelMap model) {
        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("upload");//获取当前项目下的upload
        for (int i = 0; i < file.length; i++) {
            String fileName = file[i].getOriginalFilename();//获取文件名
            System.out.println(fileName);
            // String fileName = new Date().getTime()+".jpg";//替换新名字
            System.out.println(path);
            File targetFile = new File(path,fileName);//判断文件是否存在，不存在则创建，可创建文件夹
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            // 保存
            try {
                //使用transferTo（dest）方法将上传文件写到服务器上指定的文件。
                file[i].transferTo(targetFile);//此方法在上传完成后才开始上传

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
//		model.addAttribute("fileUrl", request.getContextPath() + "/upload/"
//				+ fileName);
       return "handleText";
    }
}
