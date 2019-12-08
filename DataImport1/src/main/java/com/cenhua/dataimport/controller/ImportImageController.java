package com.cenhua.dataimport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ImportImageController {
    @RequestMapping(value = "",method = RequestMethod.POST)
    public ModelAndView Import() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("Success");
        return mav;
    }






}
