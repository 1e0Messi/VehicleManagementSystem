package com.team4.service;

import com.team4.entity.Outbound;
import com.team4.entity.Outboundsearch;

import java.util.List;

/**
 * Created by Administrator on 2018/3/14 0014.
 */
public interface OutboundService {

    List<Outbound> searchalloutboundinfo();

    List<Outbound> selectouboundbystaffid(String staffid);

    List<Outbound> selectouboundbycarid(String carid);

    void inputoutbound(Outbound outbound);

    Outbound findoutboundbyid (String id);

    void updateoutboundbyid(Outbound outbound);

    void deloutbound(String id);

    boolean delalloutbound(String[] outboundid)throws RuntimeException;

    List<Outbound> selectoutbound(Outboundsearch outboundsearch);

}
