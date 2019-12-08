//package com.cenhua.dataimport.controller;
//
//import cn.afterturn.easypoi.excel.ExcelExportUtil;
//import cn.afterturn.easypoi.excel.annotation.ExcelTarget;
//import cn.afterturn.easypoi.excel.entity.ExportParams;
//
//import cn.afterturn.easypoi.excel.export.ExcelBatchExportServer;
//import com.cenhua.dataimport.pojo.Customer;
//import org.apache.poi.hssf.usermodel.HSSFWorkbook;
//import org.apache.poi.ss.usermodel.*;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.*;
//import java.sql.*;
//import java.util.*;
//
//
//@Controller
//@ExcelTarget("courseDomain")
//public class DownloadController implements Serializable {
//    @RequestMapping(value = "/downloadeasypoi")
//    public void download(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
//
//        DownloadController d = new DownloadController();
//        try {
//            d.bigDataExport(httpServletRequest,httpServletResponse);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    //创建EXCEL文件
//    public static Workbook creatExcel(List<List<String>> lists, String[] titles, String name) throws IOException {
//        System.out.println(lists);
//        //创建新的工作薄
//        Workbook wb = new HSSFWorkbook();
//        // 创建第一个sheet（页），并命名
//        Sheet sheet = wb.createSheet(name);
//        // 手动设置列宽。第一个参数表示要为第几列设；，第二个参数表示列的宽度，n为列高的像素数。
//        for(int i=0;i<titles.length;i++){
//            sheet.setColumnWidth((short) i, (short) (35.7 * 150));
//        }
//        // 创建第一行
//        Row row = sheet.createRow((short) 0);
//
//        // 创建两种单元格格式
//        CellStyle cs = wb.createCellStyle();
//        CellStyle cs2 = wb.createCellStyle();
//
//        // 创建两种字体
//        Font f = wb.createFont();
//        Font f2 = wb.createFont();
//
//        // 创建第一种字体样式（用于列名）
//        f.setFontHeightInPoints((short) 10);
//        f.setColor(IndexedColors.BLACK.getIndex());
//        f.setBoldweight(Font.BOLDWEIGHT_BOLD);
//
//        // 创建第二种字体样式（用于值）
//        f2.setFontHeightInPoints((short) 10);
//        f2.setColor(IndexedColors.BLACK.getIndex());
//
//        // 设置第一种单元格的样式（用于列名）
//        cs.setFont(f);
//        cs.setBorderLeft(CellStyle.BORDER_THIN);
//        cs.setBorderRight(CellStyle.BORDER_THIN);
//        cs.setBorderTop(CellStyle.BORDER_THIN);
//        cs.setBorderBottom(CellStyle.BORDER_THIN);
//        cs.setAlignment(CellStyle.ALIGN_CENTER);
//
//        // 设置第二种单元格的样式（用于值）
//        cs2.setFont(f2);
//        cs2.setBorderLeft(CellStyle.BORDER_THIN);
//        cs2.setBorderRight(CellStyle.BORDER_THIN);
//        cs2.setBorderTop(CellStyle.BORDER_THIN);
//        cs2.setBorderBottom(CellStyle.BORDER_THIN);
//        cs2.setAlignment(CellStyle.ALIGN_CENTER);
//        //设置列名
//        for(int i=0;i<titles.length;i++){
//            Cell cell = row.createCell(i);
//            cell.setCellValue(titles[i]);
//            cell.setCellStyle(cs);
//        }
//        if(lists == null || lists.size() == 0){
//            return wb;
//        }
//        //设置每行每列的值
//        for (int i1 = 1; i1 <= lists.size(); i1++) {
//            // Row 行,Cell 方格 , Row 和 Cell 都是从0开始计数的
//            // 创建一行，在页sheet上
//            Row row1 = sheet.createRow(i1);
//            for(int j1=0;j1<titles.length;j1++){
//                // 在row行上创建一个方格
//                Cell cell = row1.createCell(j1);
//                cell.setCellValue(lists.get(i1-1).get(j1));
//                cell.setCellStyle(cs2);
//            }
//        }
//        return wb;
//    }
//    public static Workbook exportBigExcel(ExportParams entity, Class<?> pojoClass,
//                                          Collection<?> dataSet) {
//        ExcelBatchExportServer batachServer = ExcelBatchExportServer
//                .getExcelBatchExportServer(entity, pojoClass);
//        return batachServer.appendData(dataSet);
//    }
//
//    public static void closeExportBigExcel() {
//        ExcelBatchExportServer batachServer = ExcelBatchExportServer.getExcelBatchExportServer(null,
//                null);
//        batachServer.closeExportBigExcel();
//    }
//    public void bigDataExport(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
//        // 告诉浏览器用什么软件可以打开此文件
//        httpServletResponse.setHeader("content-Type", "application/vnd.ms-excel");
//        // 下载文件的默认名称
//        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=user.xls");
//        List<Customer> list = new ArrayList<Customer>();
//        Workbook workbook = null;
//        ExportParams params = new ExportParams("大数据测试", "测试");
//        try {
//            //Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection c = DriverManager.getConnection( "jdbc:mysql://127.0.0.1/lzw?serverTimezone=UTC&useSSL=false",//在插入数据时要规定数据格式
//                    "root", "5211314");
////                        Connection c = DriverManager.getConnection( "自己的url",//在插入数据时要规定数据格式
////                    "账号", "密码");
//            String sql= "select * from xyz_copy1";
//            Statement ps = c.createStatement();
//            ResultSet rs = ps.executeQuery(sql);
//
//            System.out.println("打印数据库数据");
//            while(rs.next()) {
//                Customer cu = new Customer();//创建对象 在循环内创建对象能够避免list添加值时会出现值被
//                //map=new HashMap<String, Customer>();
//                String id = rs.getString("id");
//                String name =rs.getString("name");
//                String sex =rs.getString("sex");
//                int age = rs.getInt("age");
//                String  n1 = rs.getString("n1");
//                String n2 = rs.getString("n2");
//                String n3 = rs.getString("n3");
//                int n4 = rs.getInt("n4");
//                int n5 = rs.getInt("n5");
//                String n6 = rs.getString("n6");
//                String n7 = rs.getString("n7");
//                String n8 = rs.getString("n8");
//                String n9 = rs.getString("n9");
//                String n10 = rs.getString("n10");
//                String n11 = rs.getString("n11");
//                String n12 = rs.getString("n12");
//                String n13 = rs.getString("n13");
//                String n14 = rs.getString("n14");
//                String n15 = rs.getString("n15");
//                cu.setId(id);
//                cu.setName(name);
//                cu.setSex(sex);
//                cu.setAge(age);
//                cu.setN1(n1);
//                cu.setN2(n2);
//                cu.setN3(n3);
//                cu.setN4(n4);
//                cu.setN5(n5);
//                cu.setN6(n6);
//                cu.setN7(n7);
//                cu.setN8(n8);
//                cu.setN9(n9);
//                cu.setN10(n10);
//                cu.setN11(n11);
//                cu.setN12(n12);
//                cu.setN13(n13);
//                cu.setN14(n14);
//                cu.setN15(n15);
//                list.add(cu);
//                //在for循环之内  根据自己电脑可以设置读取条数
//                if(list.size() == 10000){
//                    workbook = ExcelExportUtil.exportBigExcel(params, Customer.class, list);
//                    list.clear();
//                }
//            }
//            workbook.write(httpServletResponse.getOutputStream());
//            ExcelExportUtil.closeExportBigExcel();
//            File savefile = new File("D:/excel/");
//            if (!savefile.exists()) {
//                savefile.mkdirs();
//            }
//            FileOutputStream fos = new FileOutputStream("D:/excel/ExcelExportBigData.bigDataExport.xls");
//            workbook.write(fos);
//            fos.close();
//           } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//    }
//
//}
//
//
