package com.aishang.service;

import com.aishang.po.Cart;
import com.aishang.po.Order;
import com.aishang.po.OrderExt;

/**
 * @Author Harry
 * @ClassName OrderService
 * @Description TODO:(一句话描述这个类)
 */
public interface OrderService {
    /**
     * 创建订单
     * @param order
     * @param cart
     * @return
     */
    Integer createOrder(Order order, Cart cart);

    /**
     * 修改订单状态
     * @param order
     */
    void changeOrderState(Order order);

    /**
     * 查询商品详情
     * @param order
     * @return
     */
    OrderExt getOrderDetail(Order order);
}
