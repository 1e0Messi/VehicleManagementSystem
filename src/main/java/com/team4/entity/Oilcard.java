package com.team4.entity;

/**
 * Created by 王业青 on 2018/3/16 0016.
 */
public class Oilcard {
    private String oilcardid;
    private String balance;
    private int hierarchy;//1代表主卡0代表副卡
    private String carid;

    public String getOilcardid() {
        return oilcardid;
    }

    public void setOilcardid(String oilcardid) {
        this.oilcardid = oilcardid;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public int getHierarchy() {
        return hierarchy;
    }

    public void setHierarchy(int hierarchy) {
        this.hierarchy = hierarchy;
    }

    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }
}
