package com.league.action.action;

import java.util.List;

import com.league.bean.Action;
import com.league.service.ActionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePreActionAction extends ActionSupport{
	Action action;
	ActionService service;
	List list;
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
		Integer authority = (Integer)ActionContext.getContext().getSession().get("authority");
		if(authority>=8)
		{
			message="";
			action = this.service.findById(action.getId());
			list = service.findActionById(action.getId());
			
			return SUCCESS;
		}
		else {
			message = "你无权执行此操作。请先登录管理员帐号再执行此操作！";
			return INPUT;
		}

	}
}
