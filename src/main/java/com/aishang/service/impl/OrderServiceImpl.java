package com.aishang.service.impl;

import com.aishang.dao.OrderDao;
import com.aishang.po.*;
import com.aishang.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @Author Harry
 * @ClassName OrderServiceImpl
 * @Description TODO:(一句话描述这个类)
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderDao orderDao;

    @Override
    public Integer createOrder(Order order, Cart cart) {
        //创建订单
        //订单
        order.setTotal(cart.getTotal());
        order.setUid(7);//用户id,从session中取出
        order.setOrderTime(new Date());
        orderDao.addOrder(order);
        //订单项
        for (CartItem cartItem : cart.getCartItems()) {
            OrderItem orderItem = new OrderItem();
            orderItem.setSubTotal(cartItem.getSubTotal());
            orderItem.setPid(cartItem.getProduct().getPid());
            orderItem.setCount(cartItem.getCount());
            orderItem.setOid(order.getOid());
            orderDao.addOrderItem(orderItem);
        }
        //清空购物车
        cart.clear();

        return order.getOid();
    }

    @Override
    public void changeOrderState(Order order) {
        order.setState(1);//将订单状态改为1  已支付
        orderDao.changeOrderState(order);
    }

    @Override
    public OrderExt getOrderDetail(Order order) {

        return orderDao.getOrderDetail(order);
    }
}
