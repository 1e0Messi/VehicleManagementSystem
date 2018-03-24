package com.team4.service;

import com.team4.entity.Notice;

import java.util.List;

public interface NoticeService {
    List<Notice> getAllUsingNotice();
    List<Notice> getAllNotice();
    void releaseNotice(Notice notice);
    void deleteNotice(Notice notice);
    void batchDelNotice(Integer[] noticeItemsID);
}
