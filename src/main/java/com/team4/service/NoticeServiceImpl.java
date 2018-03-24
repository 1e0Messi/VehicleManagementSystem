package com.team4.service;

import com.team4.dao.NoticeMapper;
import com.team4.entity.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService{

    @Autowired
    private NoticeMapper noticeMapper;

    public List<Notice> getAllUsingNotice() {
        return noticeMapper.getAllUsingNotice();
    }

    public List<Notice> getAllNotice() {
        return noticeMapper.getAllNotice();
    }

    public void releaseNotice(Notice notice) {
        noticeMapper.insertNotice(notice);
    }

    public void deleteNotice(Notice notice) {
        noticeMapper.deleteNotice(notice);
    }

    @Transactional
    public void batchDelNotice(Integer[] noticeItemsID) throws RuntimeException{
        int flag = 0;
        Notice notice = new Notice();
        for (Integer adminItemId:noticeItemsID) {
            notice.setId(adminItemId);
            flag = noticeMapper.deleteNotice(notice);
            if(flag != 1){
                throw new RuntimeException();
            }
        }
    }


}
