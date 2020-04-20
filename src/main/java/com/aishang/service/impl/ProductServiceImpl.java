package com.aishang.service.impl;

import com.aishang.dao.ProductDao;
import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.Product;
import com.aishang.po.ProductForPageBean;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Harry
 * @ClassName ProductServiceImpl
 * @Description TODO:(一句话描述这个类)
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Resource
    private ProductDao productDao;

    @Override
    public Map<Integer, List<Product>> getFloorProducts(List<CategoryExt> allCategories) {
        //创建map容器
        Map<Integer, List<Product>> map = new HashMap<>();
        //1.遍历allCategories获取一级类目扩展类
        for (CategoryExt categoryExt : allCategories) {
            //2.遍历categoryExt中的二级类目集合，目的是获取二级类目id
            List<CategorySecond> categorySeconds = categoryExt.getCategorySeconds();
            for (CategorySecond categorySecond : categorySeconds) {
                // 3.根据二级类目id查询出商品集合
                List<Product> products = productDao.getProductsByCsid(categorySecond.getCsid());
                //封装map<二级类目id，商品集合>
                map.put(categorySecond.getCsid(),products);
            }
        }

        return map;
    }

    @Override
    public ProductForPageBean getProductsBySearch(ProductForPageBean productForPageBean) {
        //1.获取rowCount目的计算pageCount
        Integer rowCount = productDao.getRowCount(productForPageBean);
        productForPageBean.setRowCount(rowCount);
        //2.获取复合查询分页结果集
        List<Product> products = productDao.getProductsBySearch(productForPageBean);
        productForPageBean.setList(products);

        //4.返回结果
        return productForPageBean;
    }

    @Override
    public Product getProductByID(Integer pid) {

        return productDao.getProductByID(pid);
    }
}
