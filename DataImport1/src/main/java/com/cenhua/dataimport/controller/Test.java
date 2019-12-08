//package com.cenhua.dataimport.controller;
//
//import cn.afterturn.easypoi.excel.ExcelExportUtil;
//import cn.afterturn.easypoi.excel.entity.ExportParams;
//import com.cenhua.dataimport.pojo.Customer;
//
//import java.io.File;
//import java.io.FileOutputStream;
//import java.io.Serializable;
//import java.util.ArrayList;
//import java.util.List;
//import cn.afterturn.easypoi.excel.annotation.ExcelTarget;
//import org.apache.poi.ss.usermodel.Workbook;
//
//@ExcelTarget("courseDomain")
//public class Test implements Serializable {
//    public static void main(String[] args) throws Exception {
//        List<Customer> domainList = new ArrayList<Customer>();
//        domainList.add(new Customer("李7","夏*平","男", 49, "中国", "1-居民身份证", "汉族", 28, 17, "北京分行", "北京分行-行长室", "行长室", "北京分行行长", "其他", "1-正式员工", "10-在职员工", "100010-管理类", "130-分行管理-经营管理序列"));
//        domainList.add(new Customer("李6","夏*平","男", 49, "中国", "1-居民身份证", "汉族", 28, 17, "北京分行", "北京分行-行长室", "行长室", "北京分行行长", "其他", "1-正式员工", "10-在职员工", "100010-管理类", "130-分行管理-经营管理序列"));
//        domainList.add(new Customer("李5","夏*平","男", 49, "中国", "1-居民身份证", "汉族", 28, 17, "北京分行", "北京分行-行长室", "行长室", "北京分行行长", "其他", "1-正式员工", "10-在职员工", "100010-管理类", "130-分行管理-经营管理序列"));
//        domainList.add(new Customer("李4","夏*平","男", 49, "中国", "1-居民身份证", "汉族", 28, 17, "北京分行", "北京分行-行长室", "行长室", "北京分行行长", "其他", "1-正式员工", "10-在职员工", "100010-管理类", "130-分行管理-经营管理序列"));
//        domainList.add(new Customer("李3","夏*平","男", 49, "中国", "1-居民身份证", "汉族", 28, 17, "北京分行", "北京分行-行长室", "行长室", "北京分行行长", "其他", "1-正式员工", "10-在职员工", "100010-管理类", "130-分行管理-经营管理序列"));
//        ExportParams params = new ExportParams("课程详情", "课程详情");
//        Workbook workbook = ExcelExportUtil.exportExcel(params, Customer.class, domainList);
//        File targetFile = new File("D:\\test9.xls");
//        FileOutputStream fos = new FileOutputStream(targetFile);
//        workbook.write(fos);
//        fos.close();
//    }
//}