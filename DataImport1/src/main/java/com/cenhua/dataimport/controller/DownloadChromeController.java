package com.cenhua.dataimport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadChromeController {
    @RequestMapping(value="/DownloadChromeController")
    public ModelAndView download(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Success");
        return mav;
    }
}
