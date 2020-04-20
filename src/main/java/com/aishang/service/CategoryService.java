package com.aishang.service;

import com.aishang.po.CategoryExt;

import java.util.List;

/**
 * @Author Harry
 * @ClassName CategoryService
 * @Description TODO:(一句话描述这个类)
 */
public interface CategoryService {
    /**
     * 查询全部一级类目
     * @return
     */
    List<CategoryExt> getAllCategories();
}
