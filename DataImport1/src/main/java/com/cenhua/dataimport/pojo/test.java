package com.cenhua.dataimport.pojo;

import java.util.Arrays;


public class test {

    /**
     * 冒泡排序：进行倒序排序
     */
//    public static void main(String[] args) {
//    int[] ns = { 28, 12, 89, 73, 65, 18, 96, 50, 8, 36 };
//        // 排序前:
//        System.out.println(Arrays.toString(ns));
//        // TODO:
//        for(int i = ns.length-1;i>=0;i--){
//            for(int j = ns.length-1;j>ns.length-i-1;j--){
//                if(ns[j-1]<ns[j]) {
//                    int tmp = ns[j-1];
//                    ns[j-1] = ns[j];
//                    ns[j] = tmp;
//                }
//            }
//        }
//        // 排序后:
//        System.out.println(Arrays.toString(ns));
//        if (Arrays.toString(ns).equals("[96, 89, 73, 65, 50, 36, 28, 18, 12, 8]")) {
//            System.out.println("测试成功");
//        } else {
//            System.out.println("测试失败");
//        }
//    }
    /**
     * 二维数组计算平均分
     */
    public static void main(String[] args){
        // 用二维数组表示的学生成绩:
        int[][] scores = {
                { 82, 90, 91 },
                { 68, 72, 64 },
                { 95, 91, 89 },
                { 67, 52, 60 },
                { 79, 81, 85 },
        };
        // TODO:
        double average = 0;

        System.out.println(average);

        if (Math.abs(average - 77.733333) < 0.000001) {
            System.out.println("测试成功");
        } else {
            System.out.println("测试失败");
        }
    }
}
//Arrays.toString(ns) 转换成数组