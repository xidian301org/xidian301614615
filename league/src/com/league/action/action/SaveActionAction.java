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
			savemessage = "活动名已存在，请更换活动名！";
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
		 * { addFieldError("user.username", "用户名不能为空"); }
		 */
		if (action.getActionname() == ""
				|| action.getActionname().trim().equals("")) {
			addFieldError("action.actionname", "活动名不能为空");
		}
		if (action.getActioncontext() == ""
				|| action.getActioncontext().trim().equals("")) {
			addFieldError("action.actioncontext", "活动内容不能为空");
		}
		if (action.getTime() == "" || action.getTime().trim().equals("")) {
			addFieldError("action.time", "活动时间");
		}
		if (action.getLeague() == "" || action.getLeague().trim().equals("")) {
			addFieldError("action.league", "所属社团不能为空");
		}
		if (action.getSponsor() == "" || action.getSponsor().trim().equals("")) {
			addFieldError("action.sponsor", "发起人不能为空");
		}

	}
}
