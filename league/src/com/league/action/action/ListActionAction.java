package com.league.action.action;

import java.util.List;

import com.league.bean.Action;
import com.league.service.ActionService;
import com.opensymphony.xwork2.ActionSupport;

public class ListActionAction extends ActionSupport{

	Action action;
	ActionService service;
	List list;
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
	public String execute() throws Exception {
		
		list = service.findAll();
		return SUCCESS;
	}
}
