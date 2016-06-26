package com.league.action.notice;

import java.util.List;

import com.league.bean.Notice;
import com.league.service.NoticeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePreNoticeAction extends ActionSupport {

	Notice notice;
	NoticeService service;
	List list;
	String message;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String execute() throws Exception {
		Integer authority = (Integer) ActionContext.getContext().getSession()
				.get("authority");
		if (authority >= 8) {
			message = "";
			notice = this.service.findById(notice.getId());
			list = service.findNoticeById(notice.getId());

			return SUCCESS;

		} else {
			message = "你无权执行此操作。请先登录管理员帐号再执行此操作！";
			return INPUT;
		}
	}
}
