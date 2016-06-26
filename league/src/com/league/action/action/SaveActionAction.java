package com.league.action.action;

import com.league.bean.Action;
import com.league.service.ActionService;
import com.opensymphony.xwork2.ActionSupport;

public class SaveActionAction extends ActionSupport {

	Action action;
	ActionService service;
	// String message;
	String savemessage;

	public Action getAction() {
		return action;
	}

	public void setAction(Action action) {
		this.action = action;
	}

	public ActionService getService() {
		return service;
	}

	public void setService(ActionService service) {
		this.service = service;
	}

	public String getSavemessage() {
		return savemessage;
	}

	public void setSavemessage(String savemessage) {
		this.savemessage = savemessage;
	}

	/*
	 * public String getMessage() { return message; } public void
	 * setMessage(String message) { this.message = message; }
	 */
	@Override
	public String execute() throws Exception {
		Action saveAction = this.service.checkingSave(action.getActionname());
		if (saveAction != null) {
			savemessage = "����Ѵ��ڣ�����������";
			return INPUT;
		} else {
			this.service.save(action);
			return SUCCESS;
		}

	}

	@Override
	public void validate() {
		/*
		 * if (user.getUsername() == "" || user.getUsername().trim().equals(""))
		 * { addFieldError("user.username", "�û�������Ϊ��"); }
		 */
		if (action.getActionname() == ""
				|| action.getActionname().trim().equals("")) {
			addFieldError("action.actionname", "�������Ϊ��");
		}
		if (action.getActioncontext() == ""
				|| action.getActioncontext().trim().equals("")) {
			addFieldError("action.actioncontext", "����ݲ���Ϊ��");
		}
		if (action.getTime() == "" || action.getTime().trim().equals("")) {
			addFieldError("action.time", "�ʱ��");
		}
		if (action.getLeague() == "" || action.getLeague().trim().equals("")) {
			addFieldError("action.league", "�������Ų���Ϊ��");
		}
		if (action.getSponsor() == "" || action.getSponsor().trim().equals("")) {
			addFieldError("action.sponsor", "�����˲���Ϊ��");
		}

	}
}
