package com.team4.controller;
import com.team4.entity.Vehicle;
import org.json.JSONArray;
import com.team4.entity.Refuel;
import com.team4.service.RefuelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import java.util.List;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class RefuelController {

    @Autowired
    private RefuelService refuelService;

    @RequestMapping(value = "/Refuel")
    public String FindAll(Model model){
        List<Refuel> refuels=refuelService.FindAll();
        model.addAttribute("refuels",refuels);
        return "Refuel";
    }
    @RequestMapping("/delete")
    public String Delete(String id,Model model) {
        System.out.println("id:" + id);
        refuelService.delete(id);
        List<Refuel> refuels=refuelService.FindAll();
        model.addAttribute("refuels",refuels);
        return "Refuel";
    }
    @RequestMapping("/Insert")
    public String insert(Refuel refuel,Model model){
//        int carID=vehicle.getCarId();
//        System.out.println(carID);
        refuelService.save(refuel);
         List<Refuel> refuels=refuelService.FindAll();
            model.addAttribute("refuels",refuels);
        return "Refuel";
    }
    @RequestMapping("/batchDelete")
    @ResponseBody
    public String batchDelete(String TempItems) {

        JSONArray jsonArray = new JSONArray(TempItems);
        String[] TempItemsId = new String[jsonArray.length()];
        for (int i = 0; i < jsonArray.length(); i++) {
            TempItemsId[i] = (String) jsonArray.get(i);
        }
        try {
            refuelService.Delete(TempItemsId);
        } catch (RuntimeException e) {
            return "fail";
        }
        return "success";
    }
   @RequestMapping("/update")
public String update(Model model,String id){
        model.addAttribute("refuel",refuelService.findById(id));
        return "UpdateRefuel";
   }
   @RequestMapping("/updateResult")
   public String updateResult(Refuel refuel){
        System.out.println(refuel);
       refuelService.update(refuel);
       return "Refuel";
   }
   @RequestMapping("/SearchRefuel")
    public String SearchRefuel(String carid,String id,String oilcardid,Model model){
        System.out.println("id:"+id);
     List<Refuel> refuels=refuelService.Search(carid,id,oilcardid);
     model.addAttribute("refuels",refuels);
     return "SearchRefuel";
   }
    @RequestMapping("/RefuelSearch")
    @ResponseBody
    public String RefuelSearch(String RefuelItems){
        JSONArray jsonArray=new JSONArray(RefuelItems);
        String RefuelItemsId=(String) jsonArray.get(0);
        String RefuelItemsCarid=(String) jsonArray.get(1);
        String RefuelItemsCardid=(String) jsonArray.get(2);
       try{
            refuelService.Search(RefuelItemsId,RefuelItemsCarid,RefuelItemsCardid);
        }catch (RuntimeException e){
            return "fail";
        }
        return "success";
    }
    @RequestMapping("/AddRefuel")
            public String AddRefuel(Model m){
        String id =Integer.toString (Integer.valueOf( refuelService.FindAll().get(refuelService.FindAll().size()-1).getId())+1);

        m.addAttribute("id",id);
        return "addRefuel";
    }
}
