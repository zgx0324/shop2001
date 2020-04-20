package com.aishang.dao;

import com.aishang.po.Product;
import com.aishang.po.ProductForPageBean;

import java.util.List;

/**
 * @Author Harry
 * @ClassName ProductDao
 * @Description TODO:(一句话描述这个类)
 */
public interface ProductDao {
    /**
     * 根据二级类目id查询商品集合
     * @param csid
     * @return
     */
    List<Product> getProductsByCsid(Integer csid);

    /**
     * 复合查询分页
     * @param productForPageBean
     * @return
     */
    List<Product> getProductsBySearch(ProductForPageBean productForPageBean);

    /**
     * 查询rowCount
     * @param productForPageBean
     * @return
     */
    Integer getRowCount(ProductForPageBean productForPageBean);

    /**
     * 根据商品ID查询商品信息
     * @param pid
     * @return
     */
    Product getProductByID(Integer pid);
}
