package com.cenhua.dataimport.service;

import com.cenhua.dataimport.mapper.CustomerMapper;
import com.cenhua.dataimport.pojo.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CustomerService implements CustomerMapper{
    @Autowired
    public  CustomerMapper customerMapper;
 public List<Customer> getCustomerList(){
     List<Customer> lists = customerMapper.getCustomerList();
     return lists;
 }
}
