package com.league.action;

import java.util.List;

import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class ListMasterAction extends ActionSupport{

	User user;
	UserService service;
	List list;
	String usermessage;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getService() {
		return service;
	}
	public void setService(UserService service) {
		this.service = service;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
	public String getUsermessage() {
		return usermessage;
	}
	public void setUsermessage(String usermessage) {
		this.usermessage = usermessage;
	}
	@Override
	public String execute() throws Exception {

		list = this.service.findMaster();
		return SUCCESS;
	}
}
