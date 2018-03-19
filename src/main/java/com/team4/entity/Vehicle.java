package com.team4.entity;
import java.util.Date;

public class Vehicle{
    private String carID;
    private String carname;
    private String ctype;
    private String number;
    private String age;
    private String state;
    private String AIP;//车辆年检信息

    public String toString(){
        return "Vehicle[id="+carID+",name="+carname+",type="+ctype+",number="+number+",age="+age+",state="+state+",AIP="+AIP+"}";
    }
//    public Vehicle(){
////        super();
////    }
    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public String getAIP() {
        return AIP;
    }

    public void setAIP(String AIP) {
        this.AIP = AIP;
    }

    public String getCarId() {
        return carID;
    }

    public void setCarId(String carId) {
        this.carID = carId;
    }

    public String getCarname() {
        return carname;
    }

    public void setCarname(String carname) {
        this.carname = carname;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }
}
