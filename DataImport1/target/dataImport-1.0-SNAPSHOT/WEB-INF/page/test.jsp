<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/18
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面</title>
    <%--<style>--%>
        <%--&lt;%&ndash;类选择器&ndash;%&gt;--%>
       <%--.login{--%>
           <%--margin-left: 500px;--%>
           <%--margin-top: 500px;--%>
           <%--margin-bottom: 800px;--%>
       <%--}--%>
    <%--</style>--%>

    <%--斑马线表格特效 缺陷：列直接有空隙，而且边缘线没有--%>
    <style>
    tr:nth-of-type(even){
    background: #E9E9E9;
        border-style:double;
    }


    </style>
</head>
<body>
<%--阶段测试1 html--%>
<%--<h1>英雄联盟 （电子竞技类游戏）</h1>--%>
<%--<p><strong>《英雄联盟》</strong> （简称LOL）是由美国<i>Riot Games</i>开发，中国大陆地区由腾讯游戏运营的网络游戏.</p>--%>
    <%--<p><strong>《英雄联盟》</strong>除了即时战略、团队作战外，还拥有一百多位特色各异的英雄、丰富的地图、各种各样的玩法、自动匹配的战网平台，包括天赋树、召唤师系统、符文等元素。<ins>[1]</ins>--%>
<%--2016年1月，根据官方显示，同时最高在线人数<del>756</del>  900万，全球日在线最高达2700万，全球月活跃6700万，注册用户亿计。</p>--%>




<%--阶段测试2  html--%>
<%--<table border="1">--%>
<%--<tr bgcolor="#f0f8ff">--%>
    <%--<td>技能名</td>--%>
    <%--<td>触发</td>--%>
    <%--<td>技能属性</td>--%>
    <%--<td>技能效果</td>--%>
    <%--<td>图标</td>--%>
<%--</tr>--%>
    <%--<tr>--%>
        <%--<td>坚韧</td>--%>
        <%--<td>被动</td>--%>
        <%--<td colspan="2">盖伦如果9秒内没有受到小兵的伤害就耶熊了</td>--%>
        <%--<td><img src="skill1.png"/></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td>致命打击</td>--%>
        <%--<td>Q</td>--%>
        <%--<td>冷却时间：8秒</td>--%>
        <%--<td>盖伦移除身上所有负面效果，并提升60%攻击速度，然后就会随便杀人了</td>--%>
        <%--<td><img src="skill2.png"/></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<td>勇气</td>--%>
        <%--<td>w</td>--%>
        <%--<td>冷却：25/23/56/65</td>--%>
        <%--<td>465465465444444444444444444444444444444444444</td>--%>
        <%--<td><img src="skill3.png"/></td>--%>
    <%--</tr>--%>

<%--</table>--%>

<%--阶段测试3 html--%>
      <%--<div  align="center">--%>
          <%--<form>--%>
        <%--用户名 ： <input type="test" placeholder="用户名"><a data-fgColor="red">用户名不得小于3个字符</a></br>--%>
        <%--密码：<input type="text" placeholder="密码"></br>--%>
        <%--确认密码：<input type="password" placeholder="确认密码"></br>--%>
        <%--邮箱：<input type="email" placeholder="邮箱"></br>--%>
        <%--真实姓名：<input type="text" placeholder="真实姓名"></br>--%>
        <%--性别：<select>--%>
             <%--<option>男</option>--%>
             <%--<option>女</option>--%>
             <%--</select></br>--%>
        <%--生日：<select>--%>
              <%--<option>1980</option>--%>
             <%--</select>--%>
             <%--<select>--%>
              <%--<option>1980</option>--%>
             <%--</select>--%>
             <%--<select>--%>
                 <%--<option>1980</option>--%>
             <%--</select></br>--%>
        <%--手机：<input type="text" placeholder="手机号"></br>--%>
        <%--居住地：<select>--%>
                  <%--<option>1980</option>--%>
               <%--</select>--%>
               <%--<select>--%>
                  <%--<option>1980</option>--%>
               <%--</select>--%>
               <%--<select>--%>
                  <%--<option>1980</option>--%>
               <%--</select></br>--%>
        <%--QQ：  <input type="text" placeholder="QQ号">--%>
              <%--<button type="submit" >提交</button>--%>
          <%--</form>--%>
      <%--</div>--%>
       <%--css测试题---表格斑马线--%>
      <table width="100%" border="0">

          <tr >

              <td >id</td>
              <td >名称</td>
              <td >血量</td>
              <td >伤害</td>
          </tr>

          <tr >

              <td>1</td>
              <td>名称</td>
              <td>血量</td>
              <td>伤害</td>

          </tr>

          <tr >

              <td>2</td>
              <td>名称</td>
              <td>血量</td>
              <td>伤害</td>
          </tr>

          <tr >

              <td>3</td>
              <td>名称</td>
              <td>血量</td>
              <td>伤害</td>
          </tr>

          <tr>

              <td>4</td>
              <td>名称</td>
              <td>血量</td>
              <td>伤害</td>
          </tr>



</body>
</html>
