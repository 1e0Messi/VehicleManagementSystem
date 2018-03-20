package com.team4.dao;

import com.team4.entity.Outboundsearch;
import com.team4.entity.Outbound;
import com.team4.entity.Outboundsearch;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/3/14 0014.
 */

@Repository
public interface OutboundMapper {

    List<Outbound> searchalloutboundinfo();

    List<Outbound> selectouboundbystaffid(String staffid);

    List<Outbound> selectouboundbycarid(String carid);

    void inputoutbound(Outbound outbound);

    Outbound findoutboundbyid(String id);

    void updateoutboundbyid(Outbound outbound);

    void deloutbound(String id);

    int delalloutbound(String id);

    List<Outbound> selectoutbound(Outboundsearch outboundsearch);
}
