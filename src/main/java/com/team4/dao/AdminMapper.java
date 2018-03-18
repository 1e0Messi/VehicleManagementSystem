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
}
