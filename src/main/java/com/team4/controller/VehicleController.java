package com.team4.controller;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.team4.entity.Vehicle;
import com.team4.service.VehicleService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

import static javafx.scene.input.KeyCode.J;
import static javafx.scene.input.KeyCode.T;

/**
 * Created by 缑元彪 on 2018/3/10.
 */

@Controller
public class VehicleController {

    @Autowired
    private VehicleService vehicleService;

    @RequestMapping(value = "/Enter")
    public String FindAll(Model model){
       // String rs = "id:" + userService.findAll().get(0).getCarId() + "     userName:" +userService.findAll().get(0).getCarname() + "    age:" + userService.findAll().get(0).getAge() + "\\r\\nid:" + userService.findAll().get(1).getCarId() + "     userName:" +userService.findAll().get(1).getCarname() + "    age:" + userService.findAll().get(1).getAge();
        //return rs;
        List<Vehicle> vehicles=vehicleService.FindAll();
       model.addAttribute("vehicles",vehicles);
        return "Vehicle";
   }
    @RequestMapping("/insert")
    public String insert(Vehicle vehicle,Model model){
//        int carID=vehicle.getCarId();
//        System.out.println(carID);
        vehicleService.save(vehicle);
        List<Vehicle> vehicles=vehicleService.FindAll();
        model.addAttribute("vehicles",vehicles);
        return "Vehicle";
    }
    @RequestMapping("/AddVehicle")
    public String AddVehicle(){
        //VehicleService.save(vehicle);
    return "addCar";
    }
//    @RequestMapping("/UpdateInfo")
//    public String UpdateInfo(Model model){
//        List<Vehicle> vehicle=vehicleService.FindAll();
//        model.addAttribute("vehicle",vehicle);
//        return "Update";
//    }
    @RequestMapping("/Update")
    public String update(Model model,String id){
//        System.out.println(""+id);
        model.addAttribute("vehicle",vehicleService.findById(id));
        return "UpdateInfo";
    }
    @RequestMapping("/UpdateResult")
    public String Update(Vehicle vehicle){
       vehicleService.update(vehicle);
       return "Vehicle";
    }
    @RequestMapping("/findById")
    public String findById(String id,String name,Model model){
        if(id==""){
            if(name=="")
            {

            }else{
            List<Vehicle> vehicle=vehicleService.findByName(name);
            model.addAttribute("vehicle",vehicle);}
            return "Search";
        }else{
            List<Vehicle> vehicle = new ArrayList<Vehicle>();
            vehicle.add(vehicleService.findById(id));
            model.addAttribute("vehicle",vehicle);
            return "Search";
        }

    }
//    @RequestMapping("/findByName")
//    public String findByNmae(String name, Model model){
////        System.out.println(id);
////        request.setAttribute("vehicle",vehicleService.findById(id));
//        model.addAttribute("vehicle",vehicleService.findByName(name));
//        return "Search";
//    }
    @RequestMapping("/Delete")
    public String Delete(String id,Model model) {
//        System.out.println("id:" + id);
        vehicleService.delete(id);
        List<Vehicle> vehicles=vehicleService.FindAll();
        model.addAttribute("vehicles",vehicles);
       return "Vehicle";
    }
    @RequestMapping("/BatchDelete")
    @ResponseBody
    public String BatchDelete(String TempItems){
        JSONArray jsonArray=new JSONArray(TempItems);
        String[] TempItemsId=new String[jsonArray.length()];
        for(int i=0;i<jsonArray.length();i++){
            TempItemsId[i]=(String)jsonArray.get(i);
        }try{
            vehicleService.Delete(TempItemsId);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }
    @RequestMapping("/back")
    public String back(){
        return "Vehicle";
    }
//    @RequestMapping("DeleteData")
//    public String DeleteData(int id) {
//        if (vehicleService.delete(id)) {
//            return "FindAll";
//        } else {
//            return "Errors";
//        }

}
