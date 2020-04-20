package com.aishang.po;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @Author Harry
 * @ClassName Cart
 * @Description TODO:(购物车实体)
 */
public class Cart {
    private Map<Integer, CartItem> cartItems = new LinkedHashMap<>();
    private Double total = 0.0;

    /**
     * 获取购物项集合
     *
     * @return
     */
    public Collection<CartItem> getCartItems() {
        return cartItems.values();
    }


    /**
     * 获取总价
     *
     * @return
     */
    public Double getTotal() {
        return total;
    }


    /**
     * 添加购物项
     *
     * @param cartItem
     */
    public void addCartItem(CartItem cartItem) {
        //1.获取pid
        Integer pid = cartItem.getProduct().getPid();
        //2.判断购物车是否存在该购物项
        if (cartItems.containsKey(pid)) {
            //存在则取出购物项
            CartItem oldCartItem = cartItems.get(pid);
            //数量累加 例如:先买一个，又买了一个。数量累加1(oldCartItem.getCount())+1(cartItem.getCount())
            oldCartItem.setCount(oldCartItem.getCount() + cartItem.getCount());
        } else {
            //不存在则直接添加
            cartItems.put(pid, cartItem);
        }
        //维护总计 1个 1元 x       1个 3元  3*1 新增商品的小计
        total = total + cartItem.getSubTotal();
    }

    /**
     * 修改购物项中商品数量
     *
     * @param pid
     * @param count
     */
    public void changeCount(Integer pid, Integer count) {
        //获取出该购物项
        CartItem cartItem = cartItems.get(pid);
        //维护总计
        //减去原来某数量的该商品小计金额
        total = total - cartItem.getSubTotal();
        //设置新的数量
        cartItem.setCount(count);
        //加上更新数量后的该购物项小计金额
        total = total + cartItem.getSubTotal();
    }

    /**
     * 移除购物项
     *
     * @param pid
     */
    public void delCartItem(Integer pid) {
        //从map中删除key为？的节点
        CartItem remove = cartItems.remove(pid);
        //维护总计金额的变化
        total = total - remove.getSubTotal();
    }

    /**
     * 清空购物车
     */
    public void clear() {
        cartItems.clear();
        total = 0.0;
    }
}
