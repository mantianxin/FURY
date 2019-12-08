package com.cenhua.dataimport.test;

import java.io.File;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

/**
 * @author lizwl
 * @ClassName test1
 * @create 2019-10-11 21:05
 * @desc
 **/
public class test1 {


//    黄金分割点
    //public static void main(String[] args){
//        int i=1;
//        int j = 1;
//        int h ;
//        while(j!=21&&i!=21){
//            if(i%2==0&&j%2==0){
//                continue;
//            }else{
//               h = i/j;
//            }
//            i++;
//            j++;
//        }
//
//    }
//        public static void main(String[] args) {
//
//            int A = 0;                   //A  比较后传出来的新分子
//            int B=1;                     //B  比较后传出的新分母
//            double c=0,C=1;			  //C  比较后传出来的新a/b的值
//            for(int a=1;a<21;a++) {      //循环分子
//                for(int b=1;b<21;b++) {  //循环分母
//                    if(a%2==0&b%2==0)    //如果两个同时为偶数是跳出
//                        continue;
//                    c=(double)a/b;       //计算a/b的值并且 强制转化类型 赋值给c
//                    if(Math.abs(c-0.618)<Math.abs(C-0.618)) { //如果通过math函数调用.abs()方
//                        //法；取方法内参数的绝对值
//                                C=c;     //通过画x坐标轴 如果算出来的值小于一开始设定的（大C-0.168）就证
//                        // 明距离0.168左边的距离比右边的短 所以赋值给大C 并且再次循环
//                        //目的使得通过循环让分子和分母的比值越来越趋近于0.168
//                        A=a;	  //将合适的分子a赋给一开始设定好的A
//                        B=b;     //将合适的分母b赋给一开始设定好的B
//                    }
//
//                }
//            }
//            System.out.println("离黄金分割点（0.618）最近的两个数相除是："+A+"/"+B+"="+C);
//            //将传给A B 的值输出来
//        }


//    //水仙花数
//    //利用数组求水仙花数的最大最小值
//    public static void main(String[] args) {
//        for (int i = 100; i <= 999; i++) {
//            int a = i % 10;
//            int b = (i % 100) / 10;
//            int c = i / 100;
//            if (i == a * a * a + b * b * b + c * c * c) {
//                System.out.println(i);
    //ab
    //cd
//            }
//        }
//
//    }
    //小学算术题  多层循环
//    public static void main(String[] args) {
//        int a1, a2, a3, a4;
//        for (int a = 1; a<100; a++) {
//            for (int b = 1; b<100; b++) {
//                for (int c = 1;c<100 ; c++) {
//                    for (int d = 1;d<100 ; d++) {
//                        a1 = a + b;
//                        a2 = c - d;
//                        a3 = a + c;
//                        a4 = b + d;
//                        if (a1 == 8 && a2 == 6 && a3 == 14 && a4 == 10) {
//                            System.out.println("a的值"+a+"   "+"b的值"+b+"   "+"c的值"+c+"  "+"d的值"+d);
//                            break;
//                        }
//                    }
//                }
//            }
//        }
//
//    }

    //数组最小值
    //冒泡排序法实现
//    public static void main(String[] args) {
//
//        int[] a = new int[5];
//        a[0] = (int) (Math.random() * 100);
//        a[1] = (int) (Math.random() * 100);
//        a[2] = (int) (Math.random() * 100);
//        a[3] = (int) (Math.random() * 100);
//        a[4] = (int) (Math.random() * 100);
//
//        System.out.println("数组中的各个随机数是:");
//        for (int i = 0; i < a.length; i++) {
//            System.out.println(a[i]);
//        }
//        for(int i = 0;i<a.length;i++){
//            for(int j = 0;j<a.length-i-1;j++){
//                if(a[j]>a[j+1]){
//                    int temp = 0;
//                    temp = a[j];
//                    a[j] = a[j+1];
//                    a[j=1] = temp;
//                }
//            }
//        }
//        System.out.println("本练习的目的是，找出最小的一个值: "+a[0]);
//    }
    //数组最小值
    //快速排序法实现（暂未实现）

//    //数组反转
//    public static void main(String[] args) {
//
//        int[] a = new int[5];
//        a[0] = (int) (Math.random() * 100);
//        a[1] = (int) (Math.random() * 100);
//        a[2] = (int) (Math.random() * 100);
//        a[3] = (int) (Math.random() * 100);
//        a[4] = (int) (Math.random() * 100);
//
//
//        System.out.println("数组中的各个随机数是:");
//        for (int i = 0; i < a.length; i++) {
//            System.out.println(a[i]);
//        }
//        if(a.length%2==0){
//        for(int i = 0;i<a.length/2;i++){
//            int temp = 0;
//            temp = a[i];
//            a[i] = a[a.length-1-i];
//            a[a.length-1-i] = temp;
//            System.out.println("第"+i+"个数组值"+a[i]);
//        }
//        }else{
//            for(int i = 0;i<=(int)a.length/2;i++){
//                int temp = 0;
//                temp = a[i];
//                a[i] = a[a.length-1-i];
//                a[a.length-1-i] = temp;
//                System.out.println("第"+i+"个数组值"+a[i]);
//            }
//
//        }
//        System.out.println("数组中的各个随机数是:");
//        for (int i = 0; i < a.length; i++) {
//            System.out.println(a[i]);
//        }
//
//    }
    //io流方式一
//   public static void main(String[] args ){
//      //指定路径
//      File f1 = new File("D:/zichen/lol.exe");
//      System.out.println("文件的绝对路径为："+f1.getAbsolutePath());
//      System.out.println("判断文件是否存在"+f1.exists());
//      System.out.println("是否为文件夹"+f1.isDirectory());
//      System.out.println("是否为文件"+ f1.isFile());
//      System.out.println("文件长度"+f1.length());
//        //文件最后修改时间
//        long time = f1.lastModified();
//        Date d = new Date(time);
//        System.out.println("获取文件的最后修改时间："+d);
//        //设置文件修改时间为1970.1.1 08:00:00
//        f1.setLastModified(0);
//      System.out.println();
//      //本项目文件夹
//      File f2 = new File("zichen.exe");
//      System.out.println("文件绝对路径为：" + f2.getAbsolutePath());
//      //指定文件夹
//      File f3= new File(f1,"zichen.exe");
//      System.out.println("文件的绝对路径为："+f3.getAbsolutePath());
//    }
//      //io流方式二
//public static void main(String[] args) throws IOException {
//
//    File f = new File("d:/LOLFolder/skin/garen.ski");
//
//    // 以字符串数组的形式，返回当前文件夹下的所有文件（不包含子文件及子文件夹）
//    f.list();
//
//    // 以文件数组的形式，返回当前文件夹下的所有文件（不包含子文件及子文件夹）
//    File[]fs= f.listFiles();
//
//    // 以字符串形式返回获取所在文件夹
//    f.getParent();
//
//    // 以文件形式返回获取所在文件夹
//    f.getParentFile();
//    // 创建文件夹，如果父文件夹skin不存在，创建就无效
//    f.mkdir();
//
//    // 创建文件夹，如果父文件夹skin不存在，就会创建父文件夹
//    f.mkdirs();
//
//    // 创建一个空文件,如果父文件夹skin不存在，就会抛出异常
//    f.createNewFile();
//    // 所以创建一个空文件之前，通常都会创建父目录
//    f.getParentFile().mkdirs();
//
//    // 列出所有的盘符c: d: e: 等等
//    f.listRoots();
//
//    // 刪除文件
//    f.delete();
//
//    // JVM结束的时候，刪除文件，常用于临时文件的删除
//    f.deleteOnExit();
//
//}

//    //遍历子文件夹（递归方法进行遍历）
//    public static void main(String[] args ){
//       File f = new File("D:/java/");
//        findDestory(f);
//    }
//    public static void findDestory(File f){
//        if(f.isDirectory()){
//           File[] f1 = f.listFiles();
//
//           if(f1!=null){
//               for(File file:f1){
//                   findDestory(file);
//                   //file就是文件数组的遍历
//                   System.out.println("文件路径"+file.getAbsolutePath());
//               }
//           }
//        }
//    }
      //文件输入\输出流
//      public static void main(String[] args ){
//          try{
//
//              File f = new File("D:/ZICHNND.TXT");
//              //FileInputStream  f1= new FileInputStream(f); 输入流
//              FileOutputStream f1 = new FileOutputStream(f); //输出流
//
//          }catch (IOException e){
//
//              e.printStackTrace();
//          }
//
//      }
       //反转整数
     public static void main(String[] args){
         int x = 123446;
         int pop = x % 10;
         System.out.println(pop);

     }

}