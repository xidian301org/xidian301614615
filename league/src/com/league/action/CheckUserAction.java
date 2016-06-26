package com.league.action;


import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class CheckUserAction extends ActionSupport{

	User user;
	UserService service;
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
	
	public String getUsermessage() {
		return usermessage;
	}
	public void setUsermessage(String usermessage) {
		this.usermessage = usermessage;
	}
	@Override
	public String execute() throws Exception {
		user = this.service.findById(user.getId());
		if(user.getAuthority()==3)
		{
			usermessage = "该成员已通过审核";
			return ERROR;
		}
		Integer authority = 3;
		user.setAuthority(authority);
		this.service.update(user);
		return SUCCESS;
	}
}
