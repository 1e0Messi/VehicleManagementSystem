package com.team4.entity;



/**
 * Created by 吴文欢 on 2018/3/14.
 */
public class Income {

    private String id;
    private String time;
    private String carID;
    private int amount ;
    private String  applicantID;


    public String  getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCarID() {
        return this.carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public int getAmount(){
        return this.amount;
    }

    public void setAmount(int amount){
        this.amount=amount;
    }

    public String getApplicantID(){
        return this.applicantID;
    }

    public void setApplicantID(String applicantID){
        this.applicantID=applicantID;
    }

    public String toString(){
        return "id:"+this.id+"\t"+"time:"+this.time+"\t"+"carID:"+this.carID+"\t"+"amount:"+this.amount+"\t"+"applicantID:"+this.applicantID;
    }

}
