package com.team4.service;

import com.team4.entity.Outboundsearch;
import com.team4.dao.OutboundMapper;
import com.team4.entity.Outbound;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2018/3/14 0014.
 */

@Service
public class OutboundServiceImpl implements OutboundService{

    @Autowired
    private OutboundMapper outboundMapper;

    //添加@Transacation 具体用法查看文档
    public List<Outbound> searchalloutboundinfo(){
        return outboundMapper.searchalloutboundinfo();
    }

    public List<Outbound> selectouboundbystaffid(String staffid){
        return outboundMapper.selectouboundbystaffid(staffid);
    }

    public List<Outbound> selectouboundbycarid(String carid){
        return outboundMapper.selectouboundbycarid(carid);
    }

    public void inputoutbound(Outbound outbound) {
        outboundMapper.inputoutbound(outbound);
    }

    public Outbound findoutboundbyid(String id){
        return outboundMapper.findoutboundbyid(id);
    }

    public void updateoutboundbyid(Outbound outbound){
         outboundMapper.updateoutboundbyid(outbound);
    }

    public void deloutbound(String id){
        outboundMapper.deloutbound(id);
    }

    @Transactional
    public boolean delalloutbound(String[] outboundid) throws RuntimeException{
        int flag=0;
        for (String id:outboundid){
            System.out.println(id);
            flag = outboundMapper.delalloutbound(id);
            if (flag!=1)
                throw new RuntimeException();
        }
        return true;
    }

    public List<Outbound> selectoutbound(Outboundsearch outboundsearch) {
        return outboundMapper.selectoutbound(outboundsearch);
    }
}
