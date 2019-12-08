package com.cenhua.dataimport.controller;
import com.cenhua.dataimport.pojo.Customer;
import com.cenhua.dataimport.service.CustomerService;
import com.cenhua.dataimport.utils.Page;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
/**进行分页操作处理*/
@Controller
@RequestMapping("")
public class CustomerController{
    @Autowired
    CustomerService customerService;
    @RequestMapping(value="/CustomerList")
    public ModelAndView  Customerlist( Page page){
        ModelAndView mav = new ModelAndView();
        PageHelper.offsetPage(page.getStart(),5);
        List<Customer> cs = customerService.getCustomerList();
        mav.addObject("Customer",cs);
        mav.setViewName("CustomerList");
        return mav;
    }
}