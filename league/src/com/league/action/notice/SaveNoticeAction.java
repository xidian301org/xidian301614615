package com.league.action.notice;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.league.bean.Notice;
import com.league.service.NoticeService;
import com.opensymphony.xwork2.ActionSupport;

public class SaveNoticeAction extends ActionSupport {

	Notice notice;
	NoticeService service;
	String savemessage;

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

	public String getSavemessage() {
		return savemessage;
	}

	public void setSavemessage(String savemessage) {
		this.savemessage = savemessage;
	}

	@Override
	public String execute() throws Exception {
		Notice saveNotice = this.service.checkingSave(notice.getTitle());
		if (saveNotice != null) {
			savemessage = "您使用的题目已被使用，请重新换题目";
			return INPUT;
		} else {
			notice.setDaytime(GetNowDate());
			this.service.save(notice);
			return SUCCESS;
		}

	}
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

	public String GetNowDate() {
		String temp_str = "";
		Date dt = new Date();
		// 最后的aa表示“上午”或“下午” HH表示24小时制 如果换成hh表示12小时制
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		temp_str = sdf.format(dt);
		return temp_str;
	}

}
