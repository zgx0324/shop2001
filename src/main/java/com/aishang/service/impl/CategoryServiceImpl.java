package com.aishang.service.impl;

import com.aishang.dao.CategoryDao;
import com.aishang.po.CategoryExt;
import com.aishang.service.CategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Harry
 * @ClassName CategoryServiceImpl
 * @Description TODO:(一句话描述这个类)
 */
@Service
public class CategoryServiceImpl implements CategoryService {
    @Resource
    private CategoryDao categoryDao;

    @Override
    public List<CategoryExt> getAllCategories() {
        return categoryDao.getAllCategories();
    }
}
