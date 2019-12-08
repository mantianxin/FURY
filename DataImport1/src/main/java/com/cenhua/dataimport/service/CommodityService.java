package com.cenhua.dataimport.service;

import com.cenhua.dataimport.mapper.CommodityMapper;
import com.cenhua.dataimport.pojo.Commodity;
import com.cenhua.dataimport.pojo.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Date;
import java.util.List;

/**
 * @author lizwl
 * @ClassName CommodityService
 * @create 2019-09-03 22:50
 * @desc
 **/
@Service
public class CommodityService {
    @Autowired
    public CommodityMapper commodityMapper;
    //查询全部订单
    public List<Commodity> getCommodityList() {
        List<Commodity> lists = commodityMapper.getCommodityList();
        return lists;
    }
    //删除订单
    public boolean deleteCommodity(int id) {
        return commodityMapper.deleteCommodity(id);
    }

    //添加订单
    public Boolean addCommodity(Commodity commodity) {
        return commodityMapper.addCommodity(commodity);
    }
//    //修改订单
//    public Boolean updateCommodity(Commodity commodity){
//        return commodityMapper.updateCommodity(commodity);
//    }
    //根据id查询订单信息
    public List<Commodity> getonecommodityList(int id){
        List<Commodity> list= commodityMapper.getonecommodityList(id);
        return list;
    }
    //根据表单提交，查询用户s
    public  LoginUser loginuser(String Uname,String Upassword){
        return  commodityMapper.login(Uname, Upassword);
   }
   //注册用户
    public Boolean regist(LoginUser loginUser){
        return  commodityMapper.regist(loginUser);
    }
    //查询用户信息
    public  List<LoginUser> getUserLists(){
        List<LoginUser> lists = commodityMapper.getUserList();
        return lists;
    }
}