package com.league.action;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class FindUserAction extends ActionSupport {

	User user;
	UserService service;
	List list;

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

	@Override
	public String execute() throws Exception {
		list = this.service.findUserByName(user.getUsername());
		return SUCCESS;
	}
}
