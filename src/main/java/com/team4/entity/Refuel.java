package com.team4.entity;

public class Refuel {
    String  id;
    String time;
    String carid;
    String oilcardid;
    String money;
    public String toString(){
        return "refuel[id="+id+",time="+time+",carid="+carid+",oilcardid="+oilcardid+",money="+money+"}";
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }

    public String getOilcardid() {
        return oilcardid;
    }

    public void setOilcardid(String oilcardid) {
        this.oilcardid = oilcardid;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }


}
