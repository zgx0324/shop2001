package com.aishang.po;

import java.util.List;

/**
 * @Author Harry
 * @ClassName CategoryExt
 * @Description TODO:(一句话描述这个类)
 */
public class CategoryExt extends Category{
    /**
     * 二级类目集合
     */
    private List<CategorySecond> categorySeconds;

    public List<CategorySecond> getCategorySeconds() {
        return categorySeconds;
    }

    public void setCategorySeconds(List<CategorySecond> categorySeconds) {
        this.categorySeconds = categorySeconds;
    }
}
