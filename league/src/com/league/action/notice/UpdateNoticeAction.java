package com.league.action.notice;

import com.league.bean.Notice;
import com.league.service.NoticeService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateNoticeAction extends ActionSupport {

	Notice notice;
	NoticeService service;

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

	@Override
	public String execute() throws Exception {
		this.service.update(notice);

		return SUCCESS;
	}

	@Override
	public void validate() {

		if (notice.getTitle() == "" || notice.getTitle().trim().equals("")) {
			addFieldError("notice.title", "标题不能为空");
		}
		if (notice.getAuthor() == "" || notice.getAuthor().trim().equals("")) {
			addFieldError("notice.author", "作者不能为空");
		}
		if (notice.getContext() == "" || notice.getContext().trim().equals("")) {
			addFieldError("notice.context", "公告内容不能为空");
		}

	}
}
