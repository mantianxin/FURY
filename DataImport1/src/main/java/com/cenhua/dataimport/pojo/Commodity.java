package com.cenhua.dataimport.pojo;

/**
 * @author lizwl
 * @ClassName Commodity
 * @create 2019-09-03 22:44
 * @desc
 * 商品类
 *
 **/
public class Commodity {
    int id;//商品id
    String name;//商品名
    int price;//商品价格
    String address;//收货地址
    String station;//商品状态
    String Cname;//收货人姓名

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }

    public String getCname() {
        return Cname;
    }

    public void setCname(String cname) {
        Cname = cname;
    }

    public Commodity() {

    }
    @Override
    public String toString() {
        return "Commodity [id=" + id + ", name=" + name + ", price=" + price
                + ",address = " + address+",station" + station + ",cnema ="+ Cname+"]";
    }
}