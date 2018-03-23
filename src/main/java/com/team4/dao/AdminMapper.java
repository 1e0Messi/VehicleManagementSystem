package com.team4.dao;

import com.team4.entity.Admin;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface AdminMapper {

    @Select("select * from admin where id = #{id} and password = #{password}")
    Admin getAdmin(@Param("id")String id, @Param("password")String password);

    @Select("select * from admin where id = #{id} and authority = 1")
    Admin getAdminById(@Param("id")String id);

    @Select("select * from admin where authority = 1")
    List<Admin> getAllFrontAdmin();

    @Delete("delete from admin where id = #{id}")
    Integer delAdminById(@Param("id")String id);

    @Insert("insert into admin values(#{id},#{name},#{gender},#{tel},#{email},#{id_card},#{address},#{date},#{password},#{authority})")
    Integer adminAdd(Admin admin);

    @Update("update admin set password = #{newpass} where id = #{id} and password = #{oldpass}")
    Integer passwordModify(@Param("id")String id,@Param("oldpass")String oldpass,@Param("newpass")String newpass);

    @Update("update admin set name = #{name},tel = #{tel},email = #{email},address = #{address} where id = #{id}")
    Integer adminModify(@Param("id")String id,@Param("name")String name,@Param("tel")String tel,@Param("email")String email,@Param("address")String address);

    @Select("select * from admin where authority = 1 and date between #{startTime} and  #{endTime};")
    List<Admin> getAdminByDate(@Param("startTime")String startTime,@Param("endTime")String endTime);

    @Select("select count(*) from admin where authority = 1")
    int getAdminCount();

    @Select("select count(*) from driver")
    int getDriverCount();

    @Select("select count(*) from vehicleinformation")
    int getVehicleCount();

    @Select("select sum(amount) from income_management")
    int getIncomeCount();

    @Select("select sum(cost) from fee")
    int getFeeCount();

    @Select("select sum(amount) from income_management where date_format(time,'%Y-%m')=date_format(now(),'%Y-%m')")
    int getMonthIncome();
    @Select("select sum(cost) from fee where date_format(time,'%Y-%m')=date_format(now(),'%Y-%m')")
    int getMonthFee();

    @Select("select sum(amount) from income_management where YEAR(time)=YEAR(NOW())")
    int getYearIncome();
    @Select("select sum(cost) from fee where YEAR(time)=YEAR(NOW())")
    int getYearFee();

    @Select("select sum(amount) from income_management where YEAR(time) between YEAR(date_sub(now(),interval 3 year)) and YEAR(now())")
    int getThreeYearIncome();
    @Select("select sum(cost) from fee where YEAR(time) between YEAR(date_sub(now(),interval 3 year)) and YEAR(now())")
    int getThreeYearFee();

}
