package com.aishang.po;

/**
 * @Author Harry
 * @ClassName CartItem
 * @Description TODO:(购物项实体)
 */
public class CartItem {
    private Product product;
    private Integer count=0;
    private Double subTotal =0.0;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getSubTotal() {
        System.out.println(product);
        System.out.println(product.getShopPrice());
        System.out.println(count);
        return product.getShopPrice()*count;
    }

}
