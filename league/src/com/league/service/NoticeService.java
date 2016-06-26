package com.league.service;

import java.util.List;
import com.league.bean.Notice;
import com.league.dao.NoticeDao;

public class NoticeService {

	NoticeDao noticeDao;

	public NoticeDao getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	public void delete(Notice notice)
	{
		this.noticeDao.deleteNotice(notice);
	}
	public List findAll()
	{
		return this.noticeDao.findAllNotice();
	}
	public Notice findByTitle(String title)
	{
		return this.noticeDao.findNoticeByTitle(title);
	}
	public void save(Notice notice)
	{
		this.noticeDao.addNotice(notice);
	}
	public void update(Notice notice)
	{
		this.noticeDao.updateNotice(notice);
	}
	public String getTime(String time)
	{
		return this.noticeDao.GetNowDate();
	}
	
	public List findNoticeTitle(String title)
	{
		return this.noticeDao.findNoticeTitle(title);
	}
	public Notice findById(Integer id)
	{
		return this.noticeDao.findById(id);
	}
	public List findNoticeById(Integer id)
	{
		return this.noticeDao.findNoticeById(id);
	}
	public Notice checkingSave(String title)
	{
		return this.noticeDao.checkingSave(title);
	}
}
