package com.aishang.util;

import com.aishang.po.CategoryExt;
import com.aishang.service.CategoryService;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;

/**
 * @Author Harry
 * @ClassName CategoryUtil
 * @Description TODO:(一句话描述这个类)
 */
@Component
public class CategoryUtil {
    @Resource
    private ServletContext application;
    @Resource
    private CategoryService categoryService;

    /**
     * spring程序启动加载类目信息到内存
     */
    @PostConstruct
    public void init(){
        List<CategoryExt> allCategories = categoryService.getAllCategories();
        application.setAttribute("allCategories",allCategories);
    }
}
