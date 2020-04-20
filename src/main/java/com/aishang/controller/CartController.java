package com.aishang.controller;

import com.aishang.po.Cart;
import com.aishang.po.CartItem;
import com.aishang.po.Product;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @Author Harry
 * @ClassName CartController
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    @Resource
    private ProductService productService;
    @Resource
    private HttpSession session;
    /**
     * 跳转到购物车页面
     * @return
     */
    @RequestMapping("/toCart")
    public String toCart(){
        return "cart";
    }

    /**
     * 添加购物车
     * @param pid 商品id
     * @param count 商品数量
     * @return ajax返回值 yes/''
     */
    @RequestMapping("/addCart")
    @ResponseBody
    public String addCart(Integer pid,Integer count){
        //1.封装购物项
        CartItem cartItem = new CartItem();
        cartItem.setCount(count);
        Product product = productService.getProductByID(pid);
        cartItem.setProduct(product);
        //2.获取session中的购物车
        Cart cart = (Cart)session.getAttribute("cart");
        if(cart!=null){
            //若购物车不为空，则直接添加购物项
            //3.将购物项添加到购物车中
            cart.addCartItem(cartItem);
        }else{
            //若购物车为空，则先创建购物车实体，将购物项放入购物车，在把cart放入session
            cart = new Cart();
            cart.addCartItem(cartItem);
            session.setAttribute("cart",cart);
        }
        //4.返回是否添加成功信息  yes/''
        return cart.getTotal().toString();
    }

    /**
     * 更改购物项中商品数量
     * @param pid 商品id
     * @param count 商品数量
     * @return 总计金额
     */
    @RequestMapping("/changeCount")
    @ResponseBody
    public String changeCount(Integer pid,Integer count){
        //获取session中的购物车
        Cart cart = (Cart)session.getAttribute("cart");
        if(cart!=null){
            cart.changeCount(pid,count);
        }
        return cart.getTotal().toString();
    }

    /**
     * 删除购物项
     * @param pid 购物项中的商品id
     * @return 总计金额
     */
    @RequestMapping("/delCartItem")
    @ResponseBody
    public String delCartItem(Integer pid){
        //获取session中的购物车
        Cart cart = (Cart)session.getAttribute("cart");
        if(cart!=null){
            cart.delCartItem(pid);
        }
        return cart.getTotal().toString();
    }
}
