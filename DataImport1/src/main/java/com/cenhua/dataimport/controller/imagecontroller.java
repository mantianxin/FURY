package com.cenhua.dataimport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author lizwl
 * @ClassName imagecontroller
 * @create 2019-10-16 14:34
 * @desc
 **/
@Controller
@RequestMapping(value="/image")
public class imagecontroller {
      //下载图片
      /**
       * 下载图片 页面倒计时
       * */
      @RequestMapping(value="/download")
      public ModelAndView images(){
          ModelAndView mav = new ModelAndView();
          mav.setViewName("Success");
          return  mav;
      }

      //上传图片
    /**
     * 上传图片 页面倒计时 可视化界面 多图片上传
     * */
    @RequestMapping(value="/upload")
    public ModelAndView imageupload(){
          ModelAndView mav = new ModelAndView();
          mav.setViewName("faile");
        return  mav;
    }
}