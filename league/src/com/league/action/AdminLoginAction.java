package com.league.action;

import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminLoginAction extends ActionSupport{

	User user;
	UserService service;
	String message;
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
			return SUCCESS;
		}
		else {
			message = "ֻ�й�����Ա���ܲ鿴��ҳ�棬�����ȵ�¼����Ա�˻���";
//			ActionContext.getContext().getSession().remove("user");

			return INPUT;
		}
	}
	
}
