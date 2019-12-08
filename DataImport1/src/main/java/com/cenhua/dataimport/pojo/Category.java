

package com.cenhua.dataimport.pojo;

import java.util.List;

public class Category {
    private Integer id;

    private String name;

    /*如下是非数据库字段*/
    private List<Product> products;//分类对象集合

    private List<List<Product>> productsByRow;//分类对象集合包括各种产品 相当于二维数组 每个产品分类对象中包含相应的产品

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public List<List<Product>> getProductsByRow() {
        return productsByRow;
    }

    public void setProductsByRow(List<List<Product>> productsByRow) {
        this.productsByRow = productsByRow;
    }
}
