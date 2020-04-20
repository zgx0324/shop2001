package com.aishang.po;

/**
 * @Author Harry
 * @ClassName ProductForPageBean
 * @Description TODO:(商品分页实体)
 */
public class ProductForPageBean extends PageBean<Product> {
    private Integer cid;
    private Integer csid;
    private String pName;

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }
}
