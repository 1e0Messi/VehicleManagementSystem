package com.team4.dao;

import com.team4.entity.Income;
import java.util.List;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

/**
 * Created by 吴文欢 on 2018/3/14.
 */
@Repository
public interface IncomeMapper {
    public List<Income> getAllIncomeItem();



    @Delete("delete from income_management where id = #{id}")
    Integer delIncomeItemById(@Param("id")String id);

    @Insert(" insert into  income_management values (#{id},#{time},#{carID},#{amount},#{applicantID})")
    void saveIncomeItem(Income income);

    @Update("update income_management set time=#{time},carID=#{carID},amount=#{amount},applicantID=#{applicantID}  where id=#{id}")
    void submitEditIncomeForm(Income income);

    @Select("select * from income_management where id= #{id} ")
    List<Income> searchIncomeItemById(@Param("id")String id);
}
