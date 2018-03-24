package com.team4.dao;

import com.team4.entity.Notice;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticeMapper {
    @Select("select * from notice where now() between startTime and endTime")
    List<Notice> getAllUsingNotice();

    @Select("select * from notice")
    List<Notice> getAllNotice();

    @Insert("insert into notice(title,startTime,endTime,context,adminID) values(#{title},#{startTime},#{endTime},#{context},#{adminID})")
    void insertNotice(Notice notice);

    @Delete("delete from notice where id = #{id}")
    int deleteNotice(Notice notice);
}
