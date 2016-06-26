package com.league.action.action;

import com.league.bean.Action;
import com.league.service.ActionService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateActionAction extends ActionSupport{
	Action action;
	ActionService service;
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
	@Override
	public String execute() throws Exception {
		this.service.update(action);
		return SUCCESS;
	}
	@Override
	public void validate() {

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
