package com.cenhua.dataimport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InsertController {
    @RequestMapping(value="/Inserttable")

    public ModelAndView InsertTable(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("UploadText");
        return mav;

    }
}
