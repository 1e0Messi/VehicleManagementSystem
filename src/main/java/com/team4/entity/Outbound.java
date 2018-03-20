package com.team4.entity;

/**
 * Created by 王业青 on 2018/3/16 0016.
 */
public class Outbound {
    private String id;
    private String time;
    private String staff_ID;
    private String state;
    private String carid;
    private int outboundkmiles;
    private int inboundkmiles;


    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStaff_ID() {
        return staff_ID;
    }

    public void setStaff_ID(String staff_ID) {
        this.staff_ID = staff_ID;
    }

    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }

    public int getOutboundkmiles() {
        return outboundkmiles;
    }

    public void setOutboundkmiles(int outboundkmiles) {
        this.outboundkmiles = outboundkmiles;
    }

    public int getInboundkmiles() {
        return inboundkmiles;
    }

    public void setInboundkmiles(int inboundkmiles) {
        this.inboundkmiles = inboundkmiles;
    }

    }

