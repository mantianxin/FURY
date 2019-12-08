/*计算订单的剩余时间*/
var globeNowTime=new Date();
var oderId=null;
var liveTime={
  initData:function(orderIdArgs){
    oderId=orderIdArgs;
  },
  convertStrToDate:function(dateString) {  //将字符串时间转化
    if (dateString) { //2017-12-01 13:12:15
      var arg1 = dateString.split(" ");  //分割日期和时分秒
      var arg2 = arg1[0].split('-');
      var arg3=  arg1[1].split(':');
      var date = new Date(arg2[0], arg2[1]-1, arg2[2],arg3[0],arg3[1],arg3[2]);  //分别对应 年 月 日 时 分 秒
      return date;
    }
  },
  addLeftZero:function(tempNum){  //两位数，左边补0
    if(tempNum<10){
      return "0"+tempNum;
    }else if(tempNum==0){
      return "00";
    }else{
      return tempNum;
    }
  },
  formatDate:function(num){  //将毫秒数转化为倒计时 eg :29:30
    if(num>0){
      var minute=parseInt(num/60/1000);
      var yushu=num%(60*1000);
      var second=parseInt(yushu/1000);
      return liveTime.addLeftZero(minute)+":"+liveTime.addLeftZero(second);
    }else{
      return "00:00";
    }
  },
  updateOrderInfo:function(){  //更新数据库订单状态
    var url = "/core/recordExplain.updLiveOrderState.do";
    var postData={"orderId":oderId};
    $.getMyJSON(url,postData,function(data){
      console.info("更新成功");
    });
  },
  globeCalculateTime:function(initTime){  //列表调用此方法    e 传入this
    var remainTime="00:00"; //剩余时间
    var timeLength=globeNowTime.getTime()-liveTime.convertStrToDate(initTime).getTime(); //求当时间和下单时间的差（毫秒）
    remainTime=liveTime.formatDate(timeLength);
    return remainTime;
  },
  calculateTime:function(initTime){  //定时器调用此方法
    var remainTime="00:00"; //剩余时间
    var nowDate=new Date();
    var timeLength=nowDate.getTime()-liveTime.convertStrToDate(initTime).getTime(); //求当时间和下单时间的差（毫秒）
    remainTime=liveTime.formatDate(timeLength);
    return remainTime;
  },
  remindTime:function(getTime,className,className2){  //剩余时间倒计时
    var tt="00:00";
    if(getTime != null){
      var tempTime=getTime.split(":");
      var timeLength=parseInt(tempTime[0])*60*1000+parseInt(tempTime[1])*1000-1000;
      if(timeLength<1000){  //当订单剩余时间小于1 秒的时候，开始更新数据库的订单状态
        //TODO something
        liveTime.updateOrderInfo();  //更新数据
        //并且将定时器关闭
        clearInterval(showTimeInterval);
        //修改名称
        $(""+className2).html("订单失效");
      }else{
        tt=liveTime.formatDate(timeLength);
      }

    }

    $(""+className).html(tt);
  }


}