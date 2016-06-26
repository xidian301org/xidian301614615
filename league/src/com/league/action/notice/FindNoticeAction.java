package com.league.action.notice;

import java.util.List;

import com.league.bean.Notice;
import com.league.service.NoticeService;
import com.opensymphony.xwork2.ActionSupport;

public class FindNoticeAction extends ActionSupport{

	Notice notice;
	NoticeService service;
	List list;
	public Notice getNotice() {
		return notice;
	}
	public void setNotice(Notice notice) {
		this.notice = notice;
	}
	public NoticeService getService() {
		return service;
	}
	public void setService(NoticeService service) {
		this.service = service;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
	@Override
	public String execute() throws Exception {
		list = this.service.findNoticeTitle(notice.getTitle());
		return SUCCESS;
	}
}
