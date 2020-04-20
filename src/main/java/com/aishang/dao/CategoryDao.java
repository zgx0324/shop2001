package com.aishang.dao;

import com.aishang.po.CategoryExt;

import java.util.List;

/**
 * @Author Harry
 * @ClassName CategoryDao
 * @Description TODO:(一句话描述这个类)
 */
public interface CategoryDao {

    /**
     * 查询全部一级类目
     * @return
     */
    List<CategoryExt> getAllCategories();
}
