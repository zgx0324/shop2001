package com.aishang.po;

import java.util.List;

/**
 * @Author Harry
 * @ClassName OrderExt
 * @Description TODO:(一句话描述这个类)
 */
public class OrderExt extends Order{
    private List<OrderItemExt> orderItemExts;

    public List<OrderItemExt> getOrderItemExts() {
        return orderItemExts;
    }

    public void setOrderItemExts(List<OrderItemExt> orderItemExts) {
        this.orderItemExts = orderItemExts;
    }
}
