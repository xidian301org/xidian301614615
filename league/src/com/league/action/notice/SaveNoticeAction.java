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
			savemessage = "��ʹ�õ���Ŀ�ѱ�ʹ�ã������»���Ŀ";
			return INPUT;
		} else {
			notice.setDaytime(GetNowDate());
			this.service.save(notice);
			return SUCCESS;
		}

	}
	public void validate() {

		if (notice.getTitle() == "" || notice.getTitle().trim().equals("")) {
			addFieldError("notice.title", "���ⲻ��Ϊ��");
		}
		if (notice.getAuthor() == "" || notice.getAuthor().trim().equals("")) {
			addFieldError("notice.author", "���߲���Ϊ��");
		}
		if (notice.getContext() == "" || notice.getContext().trim().equals("")) {
			addFieldError("notice.context", "�������ݲ���Ϊ��");
		}

	}

	public String GetNowDate() {
		String temp_str = "";
		Date dt = new Date();
		// ����aa��ʾ�����硱�����硱 HH��ʾ24Сʱ�� �������hh��ʾ12Сʱ��
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		temp_str = sdf.format(dt);
		return temp_str;
	}

}
