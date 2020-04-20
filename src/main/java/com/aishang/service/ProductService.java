package com.aishang.service;

import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.po.ProductForPageBean;

import java.util.List;
import java.util.Map;

/**
 * @Author Harry
 * @ClassName ProductService
 * @Description TODO:(一句话描述这个类)
 */
public interface ProductService {
    /**
     * 根据类目信息查询对应的商品信息(首页楼层)
     * @param allCategories 一二级类目
     * @return
     */
    Map<Integer, List<Product>> getFloorProducts(List<CategoryExt> allCategories);

    /**
     * 复合查询分页
     */
    ProductForPageBean getProductsBySearch(ProductForPageBean productForPageBean);

    /**
     * 根据商品id查询商品信息
     * @param pid
     * @return
     */
    Product getProductByID(Integer pid);
}
