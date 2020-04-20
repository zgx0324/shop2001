package com.aishang.po;

/**
 * @Author Harry
 * @ClassName OrderItemExt
 * @Description TODO:(一句话描述这个类)
 */
public class OrderItemExt extends OrderItem{
    private Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
