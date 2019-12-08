//package com.cenhua.dataimport.controller;
//import org.apache.poi.hssf.usermodel.HSSFWorkbook;
//import org.apache.poi.ss.usermodel.*;
//import org.apache.poi.xssf.usermodel.XSSFWorkbook;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//import javax.servlet.http.HttpServletResponse;
//import java.io.*;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.List;
///**
// * 读取Excel文件数据批量插入数据库
// */
//@Controller
//public class HandleControler {
//    public static String sqlcreat = " ";//建表语句
//    public static String sqlcreatestart ="create table xyz("; //建表语句开头
//    public static String sqlload = " varchar(20)";  //字段属性
//    public static String sqlcreateend = " )"; //建表语句结尾
//    public static String sqlinsert = " ";//插数语句
//    public static  String[] sqlinsertstart = new String[1000000];//动态初始化
//    //定义数组不能指定数组长度  String sqlinsertstart[] 数组定义另外一种方式;
//    public static String sqlinsertend =" )";  //插数语句结尾
//    public static String sqlchar = "  ";
//    public static int[] id = new int[1000000] ;//存储整型数据编号
//    public static int y = 0;//确定插入语句
//    public static int j1 = 0;
//    public static int r =0;
//    public static int r1 =0;
//    @RequestMapping(value = "/handle")
//    public ModelAndView handle(HttpServletResponse response){
//        int i = 0;
//        int j = 0;
//        String[] node = new String[10000];
//        ModelAndView mav = new ModelAndView();
//        ArrayList<String> listFileName = new ArrayList<String>();
//        HandleControler ha = new HandleControler();
//        String st ="D:\\SSM框架\\DataImport\\target\\dataImport-1.0-SNAPSHOT\\upload\\";
//        //获取文件名
//        this.getAllFileName(st,listFileName);
//        //获取文件夹下文件名
//        for(String name:listFileName){
//                String s1 = name;
//                List<List<String>>  lists = ha.readExcel(s1);
//                //展示读取数据作用
//                for (List<String> list : lists) {
//                    for (String strs : list) {
//                        //显示表格列字段名
//                        if(i<1){
//                            if(strs.contains("工龄")){
//                                System.out.println("公龄位于"+r+"列");
//                                id[r] = r+1;
//                            }else if(strs.contains("行龄")){
//                                System.out.println("行龄位于"+r+"列");
//                                id[r] = r+1;
//                            }else if(strs.contains("年龄")){
//                                System.out.println("年龄位于"+r+"列");
//                                id[r] = r+1;
//                            }
//                            r++;//获取列数
//                        } else{
//                            /*显示全部列字段数值  插入数据代码块  判断插入数据类型
//                            r:总列数 利用读取
//                            r1:总列数（中间值） 每列循环结束 利用r总列数重新赋值
//                            y:插入数据数组序号
//                            j1:判断是每列第几个元素  可以结合 id[]数组进行判断 但是循环是个问题
//                            j:数组序号*/
//                            node[j] = strs;
//                                //判断为特殊类型
//                                      if(j1==0) {//第一行
//                                          if(id[j1]!=j1+1){
//                                               sqlinsertstart[y] = "insert into xyz values( ";
//                                               sqlinsertstart[y] = sqlinsertstart[y] +"'" +node[j] +"'" + ",";
//                                               j++;
//                                          }else if(id[j1]==j1+1){
//                                              sqlinsertstart[y] = "insert into xyz values( ";
//                                              sqlinsertstart[y] = sqlinsertstart[y] +node[j] + ",";
//                                              j++;
//                                          }
//                                      }else if(j1<r1-1){//其余行
//                                             if(id[j1]!=j1+1){
//                                             sqlinsertstart[y] = sqlinsertstart[y] +"'" + node[j] +"'" +",";
//                                             j++;
//                                             }else if(id[j1]==j1+1){
//                                                 sqlinsertstart[y] = sqlinsertstart[y] + node[j] +",";
//                                                 j++;
//                                             }
//                                      } else if(j1==r1-1){
//                                             if(id[j1]!=j1+1) {
//                                                 sqlinsertstart[y] = sqlinsertstart[y] + "'" + node[j] + "'" + ")";
//                                                 j++;
//                                             }else if(id[j1]==j1+1){
//                                                 sqlinsertstart[y] = sqlinsertstart[y]  + node[j]  + ")";
//                                                 j++;
//
//                                             }
//                                      }
//                            j1++;
//                        }
//                    }
//                    r1=r;//重新赋值列数 重新循环
//                    j1=0;//判断是否是第一个
//                    y++;//换插入语句
//                    i++;//换列
//                }
//            //链接数据库  批量插入数据
//           try {
//                Class.forName("com.mysql.cj.jdbc.Driver");
//                Connection c = DriverManager.getConnection( "jdbc:mysql://127.0.0.1/test?serverTimezone=UTC&useSSL=false",//在插入数据时要规定数据格式
//                        "root", "5211314");
//                Statement ps = null;
//                c.setAutoCommit(false);
//                ps = c.createStatement();
//                for(int l = 1;l<y-1;l++){
//                    System.out.println(sqlinsertstart[l]);
//                    ps.addBatch(sqlinsertstart[l]);
//                }
//                ps.executeBatch();
//                c.commit();
//            } catch (ClassNotFoundException e) {
//                e.printStackTrace();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//        mav.setViewName("Success");
//        return mav;
//    }
//    //读取EXCEL文件 利用二维数组进行读取Excel文件
//    public static List<List<String>> readExcel(String path) {
//        String fileType = path.substring(path.lastIndexOf(".") + 1);//截取文件类型
//        // return a list contains many list
//        //System.out.println(fileType+"12"+"filetype");
//        List<List<String>> lists = new ArrayList<List<String>>();
//        //读取excel文件
//        InputStream is = null;
//        try {
//            is = new FileInputStream(path);
//            //获取工作薄
//            Workbook wb = null;
//            if (fileType.equals("xls")) {
//                wb = new HSSFWorkbook(is);
//            } else if (fileType.equals("xlsx")) {
//                wb = new XSSFWorkbook(is);
//            } else {
//                return null;
//            }
//            //读取第一个工作页sheet
//            Sheet sheet = wb.getSheetAt(0);
//            //第一行为标题
//            for (Row row : sheet) {
//                ArrayList<String> list = new ArrayList<String>();
//                for (Cell cell : row) {
//                    //根据不同类型转化成字符串
//                    cell.setCellType(Cell.CELL_TYPE_STRING);
//                    list.add(cell.getStringCellValue());
//                }
//                lists.add(list);
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if (is != null) is.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//        return lists;
//    }
//    //获取文件路径
//    public static void getAllFileName(String path, ArrayList<String> listFileName){
//        File file = new File(path);
//        String [] names = file.list();
//        if(names != null){
//            String [] completNames = new String[names.length];
//            for(int i=0;i<names.length;i++){
//                completNames[i]=path+names[i];
//            }
//            listFileName.addAll(Arrays.asList(completNames));
//        }
//    }
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
//}
