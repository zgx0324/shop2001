package com.aishang.controller;

import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.service.CategoryService;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;

/**
 * @Author Harry
 * @ClassName IndexController
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/index")
public class IndexController {
    @Resource
    private CategoryService categoryService;
    @Resource
    private ProductService productService;
    @Resource
    private ServletContext application;
    /**
     * 跳转主页
     * @return
     */
    @RequestMapping("/toIndex")
    public String toIndex(Model model){
        // 查询类目导航
        List<CategoryExt> allCategories =(List<CategoryExt>)application.getAttribute("allCategories");
        Map<Integer,List<Product>> floorProducts=productService.getFloorProducts(allCategories);
        model.addAttribute("floorProducts",floorProducts);
        return "index";
    }
}
