package com.cenhua.dataimport.controller;
import com.alibaba.fastjson.JSONObject;
import com.cenhua.dataimport.pojo.Commodity;
import com.cenhua.dataimport.pojo.Image;
import com.cenhua.dataimport.pojo.LoginUser;
import com.cenhua.dataimport.pojo.User;
import com.cenhua.dataimport.service.CommodityService;
import com.cenhua.dataimport.service.ImageService;
import com.cenhua.dataimport.utils.Page;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Encoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author lizwl
 * @ClassName CommodityController
 * @create 2019-09-08 19:38
 * @desc
 **/
@Controller
@RequestMapping(value = "/Commoditylist")
public class CommodityController {
    @Autowired
    CommodityService commodityService;
    ImageService imageService;

    //登录页面--登录后台系统页面
//    @RequestMapping(value = "/loginpage")
//    public ModelAndView loginpage(@RequestParam("Uname") String Uname, @RequestParam("Upassword") String Upassword, HttpServletRequest request) {
//        ModelAndView mav = new ModelAndView();
//        LoginUser loginUser = commodityService.loginuser(Uname, Upassword);
//        if (loginUser == null) {
//            mav.setViewName("faile");
//        } else {
//            //查询所有订单信息
//            List<Commodity> cs = commodityService.getCommodityList();
//            mav.addObject("commodity", cs);
//            mav.setViewName("datatable");
//        }
//        return mav;
//    }
    //登录页面--登录天猫首页
    @RequestMapping(value = "/logintm")
    public ModelAndView logintm() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("showuser");
        return mav;
    }

    //跳转登陆界面
    @RequestMapping(value = "/login")
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("logintianmao");
        return mav;
    }

    //注册界面
    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    public ModelAndView regist(LoginUser loginUser) {
        ModelAndView mav = new ModelAndView();
        commodityService.regist(loginUser);
        List<LoginUser> cs = commodityService.getUserLists();
        mav.addObject("userinfo", cs);
        mav.setViewName("showuser");
        return mav;
    }

    //跳转注册界面
    @RequestMapping(value = "/registpage")
    public ModelAndView registpage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("general");
        return mav;
    }

    //查询用户信息
    @RequestMapping(value = "/selectuser")
    public ModelAndView selectusers() {
        ModelAndView mav = new ModelAndView();
        List<LoginUser> cs = commodityService.getUserLists();
        mav.addObject("LoginUser", cs);
        mav.setViewName("showuser");
        return mav;
    }

    //查询订单信息
    @RequestMapping(value = "/select")
    public ModelAndView Customerlist(Page page) {
        ModelAndView mav = new ModelAndView();
        //PageHelper.offsetPage(page.getStart(), 1);
        List<Commodity> cs = commodityService.getCommodityList();
        mav.addObject("commodity", cs);
        mav.setViewName("datatable");//datatable  showuser
        return mav;
    }

    //根据id查询订单信息
    @RequestMapping(value = "/oneselect")
    public ModelAndView onecommodity(Commodity commodity, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        String i = request.getParameter("id");
        int b = Integer.valueOf(i).intValue();
        List<Commodity> cs1 = commodityService.getonecommodityList(b);
        mav.addObject("commodity", cs1);
        mav.setViewName("oneselect");
        return mav;
    }

    //跳转增加订单页面
    @RequestMapping("/addjsp")
    public ModelAndView addjsp() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("addcommodity");
        return mav;
    }

    //处理增加订单页面发送的数据
    @RequestMapping(value = "/addcommodity")
    public ModelAndView add(Commodity commodity) {
        ModelAndView mav = new ModelAndView();
        commodityService.addCommodity(commodity);
        List<Commodity> cs = commodityService.getCommodityList();
        commodityService.getCommodityList();
        mav.addObject("commodity", cs);
        mav.setViewName("datatable");
        return mav;

    }

    //删除订单信息
    @RequestMapping(value = "/delete")
    public ModelAndView deleteCommodityinfo(HttpServletRequest request) {

        ModelAndView mav2 = new ModelAndView();
        String i = request.getParameter("id");
        int b = Integer.valueOf(i).intValue();
        commodityService.deleteCommodity(b);
        List<Commodity> cs = commodityService.getCommodityList();
        commodityService.getCommodityList();
        mav2.addObject("commodity", cs);
        mav2.setViewName("datatable");
        return mav2;
    }


    //跳转修改订单页面
    @RequestMapping(value = "/updatecommodityjsp")
    public ModelAndView update() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("updatecommodity");
        return mav;
    }


    //    //修改订单  修改订单首先要根据id,查询订单信息，然后重新填写数据，进行更新订单信息
//    @RequestMapping(value="/update")
//    public ModelAndView updateCommodity(Commodity commodity){
//        ModelAndView mav = new ModelAndView();
//        commodityService.updateCommodity(commodity);
//
//        List<Commodity> cs = commodityService.getCommodityList();
//        commodityService.getCommodityList();
//        mav.addObject("commodity", cs);
//        mav.setViewName("datatable");
//        return mav;
//    }
    //跳转上传页面
    @RequestMapping(value="/uppages")
    public ModelAndView uploadpage(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("showupload");
        return mav;
    }
    //上传图片
    @RequestMapping(value = "/upload")
    public ModelAndView upload(HttpServletRequest request,
                         @RequestParam("file") MultipartFile[] file, ModelMap model) {
        ModelAndView mav = new ModelAndView();
        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("uploads");//获取当前项目下的upload
        for (int i = 0; i < file.length; i++) {
            String fileName = file[i].getOriginalFilename();//获取文件名
            System.out.println(fileName);
            // String fileName = new Date().getTime()+".jpg";//替换新名字
            System.out.println(path);
            File targetFile = new File(path,fileName);//判断文件是否存在，不存在则创建，可创建文件夹
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            // 保存
            try {
                //使用transferTo（dest）方法将上传文件写到服务器上指定的文件。
                file[i].transferTo(targetFile);//此方法在上传完成后才开始上传

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        mav.setViewName("Success");
//		model.addAttribute("fileUrl", request.getContextPath() + "/upload/"
//				+ fileName);
        return mav;
    }

    //上传图片
    @RequestMapping(value = "/download")
    public ModelAndView downloadpictiure() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("showuoload");
        return mav;
    }
    //跳转产品列表
    @RequestMapping( value="/productlist")
    public ModelAndView product(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("1");
        return mav;
    }
        //后端发送json数据到前端
        @RequestMapping("/test")
        public ModelAndView test(HttpServletResponse response) throws IOException {
        //            //在前端页面打印出json数据
//            User sysUser=new User();
//            sysUser.setName("小明");//("123456");
//            sysUser.setPassword("123456");//("小明");
//            System.out.println("dskfjdsfssdfdsfklkdfdsf");
//            JSONObject jsonObject= (JSONObject) JSONObject.toJSON(sysUser);
//            Map<String,String> map=new HashMap<>();
//            map.put("phone","1223456");
//            map.put("status","ok");
//            jsonObject.put("info",map);
//            response.setContentType("text/html;charset=utf-8");
//            response.getWriter().write(jsonObject.toJSONString());
              ModelAndView mav = new ModelAndView();
              JSONObject object = new JSONObject();//创建json对象
              object.put("username","张三");
              object.put("password","123456");
              System.out.println(object.toString());//
              //json数据返回浏览器
              response.getWriter().write(object.toJSONString());
              mav.setViewName("JSONTEXT");
              return  mav;
        }
//结果如下：
//{"loginAccount":"小明","roles":[],"loginPass":"123456","info":{"phone":"1223456","status":"ok"}}
    @RequestMapping(value = "/json",method =RequestMethod.POST)
    public void jsontests(HttpServletRequest Request,HttpServletResponse Response) throws IOException{
        //1.获取用户名
        String username = Request.getParameter("username");
        //2.查询数据库
        //期望服务器返回的数据的格式{“userExit”:true,"msg":"此用户名太守喜欢，请换一个"}
        //                     {“userExit”:false,"msg":"此用户名可用"}
        //Map<String,Object> map = new HashMap<String,Object>();
//        if("tom".equals(username)){
//            //存在
//            map.put("userExit","true");
//            map.put("msg","此用户名太守喜欢，请换一个");
//        }else{
//            //不存在
//            map.put("userExit","false");
//            map.put("msg","此用户名可用");
//        }
//        //将map转为json
//        ObjectMapper mapper = new ObjectMapper();
//        //传递给浏览器
//        mapper.writeValue(Response.getWriter(),map);
        JSONObject object = new JSONObject();//创建json对象
        if("tom".equals(username)){
            //存在
            object.put("userExit","true");
            object.put("msg","此用户名太守喜欢，请换一个");
        }else{
            //不存在
            object.put("userExit","false");
            object.put("msg","此用户名可用");
        }
        System.out.print(object);
    }
}