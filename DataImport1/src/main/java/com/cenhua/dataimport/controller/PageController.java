package com.cenhua.dataimport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
    @RequestMapping(value = "/page")
    public ModelAndView page(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("vue12");
        return mav;
    }
}
