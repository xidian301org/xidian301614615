package com.league.action.action;

import java.util.List;

import com.league.bean.Action;
import com.league.service.ActionService;
import com.opensymphony.xwork2.ActionSupport;

public class CheckActionAction extends ActionSupport{

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
		action = this.service.findById(action.getId());
		String checked = "y";
		action.setChecked(checked);
		this.service.update(action);
		return SUCCESS;
	}
}
