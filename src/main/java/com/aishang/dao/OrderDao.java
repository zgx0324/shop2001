package com.aishang.dao;

import com.aishang.po.Order;
import com.aishang.po.OrderExt;
import com.aishang.po.OrderItem;

/**
 * @Author Harry
 * @ClassName OrderDao
 * @Description TODO:(一句话描述这个类)
 */
public interface OrderDao {
    /**
     * 添加订单
     * @param order
     */
    void addOrder(Order order);

    /**
     * 添加订单项
     * @param orderItem
     */
    void addOrderItem(OrderItem orderItem);

    /**
     * 修改订单状态
     * @param order
     */
    void changeOrderState(Order order);

    /**
     * 查询订单详情
     * @param order
     * @return
     */
    OrderExt getOrderDetail(Order order);
}
