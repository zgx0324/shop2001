package com.aishang.po;

import java.util.List;

/**
 * @Author Harry
 * @ClassName PageBean
 * @Description TODO:(分页实体)
 */
public class PageBean<T> {
    private Integer pageNow = 1;
    private Integer pageSize = 12;
    private Integer rowCount;
    private Integer pageCount;
    /**
     * 复合查询分页结果集
     */
    private List<T> list;
    private Integer start;

    /**
     * 分页数组
     *
     * @return
     */
    private int[] pages;

    public int[] getPages() {
        //1.pageNow 和 pageSize
        int pageNow = Math.min(getPageNow(), getPageCount());
        int pageCount = getPageCount();

        pageNow = pageNow > getPageCount() ? getPageCount() : pageNow;

        // 2.设置分页的初始值和结束值
        int begin = 1;
        int end = 1;
        // 3.判断页面当前页的分页初始值和结束值，从而达到滚动效果
        if (pageNow < 4) {
            //若pageNow<4则初始页为 1。
            begin = 1;
            //结束页若pageCount>7则为7,否则为pageCount本身
            end = Math.min(pageCount, 7);
        } else {
            //若pageNow>4则初始页为 pageNow - 3。
            //若已经在最后一页了，无需设置滚动效果。
                //即 pageNow-3的值大于pageCount - 7了。所以begin为pageCount - 7
            begin = Math.min(pageNow - 3, pageCount - 7);
            // 结束页若是pageCount则为pageCount。若小于pageCount则为pageNow+3
            end = Math.min(pageNow + 3, pageCount);
        }
        int y = 0;
        //4.封装分页数组，并返回。如：[1 2 3 4 5 6 7]

        //最后生成页码之前必须校验begin大于1
        begin= Math.max(begin, 1);
        // 创建分页数组，长度为结束值-初始值+1。例如：[1 2 3 4 5 6 7] 数组长度为 7-1+1
        pages = new int[end - begin + 1];

        //封装数组
        for (int i = begin; i <= end; i++) {
            pages[y] = i;
            y++;
        }
        return pages;
    }


    public Integer getPageNow() {
        pageNow = pageNow < 1 ? 1 : pageNow;
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getRowCount() {
        return rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = rowCount;
    }

    public Integer getPageCount() {
        if (rowCount % pageSize > 0) {
            pageCount = rowCount / pageSize + 1;
        } else {
            pageCount = rowCount / pageSize;
        }
        return pageCount;
    }


    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public Integer getStart() {
        return (getPageNow() - 1) * pageSize;
    }

}
