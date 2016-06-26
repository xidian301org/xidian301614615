package com.league.action.action;

import com.league.bean.Action;
import com.league.service.ActionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteActionAction extends ActionSupport {
	Action action;
	ActionService service;
	String message;

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
			this.service.delete(action);
			return SUCCESS;
		} else {
			message = "你无权执行此操作。请先登录管理员帐号再执行此操作！";
			return INPUT;
		}
	}
}
