package com.aishang.controller;

import com.aishang.po.Cart;
import com.aishang.po.Order;
import com.aishang.po.OrderExt;
import com.aishang.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @Author Harry
 * @ClassName OrderController
 * @Description TODO:(一句话描述这个类)
 */
@RequestMapping("/order")
@Controller
public class OrderController {
    @Resource
    private OrderService orderService;
    @Resource
    private HttpSession session;

    /**
     * 跳转确认订单页
     *
     * @return
     */
    @RequestMapping("/toConfirmOrder")
    public String toConfirmOrder() {
        //*登录验证，必须是登录状态购买，否则让他回到登录页登录
//        if(session.getAttribute("user")){
//            return "confirmOrder";
//        }else{
//            return "login";
//        }
        return "confirmOrder";
    }

    /**
     * 跳转到支付页面
     *
     * @param order
     * @param model
     * @return
     */
    @RequestMapping("/toPay")
    public String toPay(Order order, Model model) {
        Cart cart = (Cart) session.getAttribute("cart");
        //User user = (User) session.getAttribute("user");

        //生成待支付订单
        Integer oid = orderService.createOrder(order, cart);

        //3.跳转到支付页
        model.addAttribute("oid", oid);
        return "pay";
    }

    /**
     * 支付成功页面
     */
    @RequestMapping("/doPay")
    public String doPay(Order order, Model model) {
        //1.将待支付订单状态改为已支付
        orderService.changeOrderState(order);
        //2.查询订单详情，并回显
        OrderExt orderExt = orderService.getOrderDetail(order);
        model.addAttribute("orderExt", orderExt);
        return "paySuccess";
    }
}
