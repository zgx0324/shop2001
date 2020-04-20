package com.aishang.controller;

import com.aishang.po.Product;
import com.aishang.po.ProductForPageBean;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

/**
 * @Author Harry
 * @ClassName ProductController
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    private ProductService productService;

    /**
     * 复合查询分页
     *
     * @param productForPageBean
     * @return
     */
    @RequestMapping("/searchProduct")
    public String searchProduct(ProductForPageBean productForPageBean, Model model) {

        try {
            //转码
            String pName = productForPageBean.getpName();
            if(pName!=null){
                pName = new String(pName.getBytes("ISO-8859-1"), "UTF-8");
                productForPageBean.setpName(pName);
            }
            // 调用service获取结果集和分页总数
            ProductForPageBean productBean = productService.getProductsBySearch(productForPageBean);
            model.addAttribute("productForPageBean", productBean);

        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "searchProduct";
    }

    /**
     * 跳转商品详情页
     * @return
     */
    @RequestMapping("/toProductDetail")
    public String toProductDetail(Integer pid,Model model){
        Product product=productService.getProductByID(pid);
        model.addAttribute("product",product);
        return "productDetail";
    }
}
