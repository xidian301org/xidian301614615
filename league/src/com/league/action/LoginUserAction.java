package com.league.action;

import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginUserAction extends ActionSupport {

	String message;
	User user;
	UserService service;

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

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		User loginUser = getService().login(user.getUsername(),
				user.getPassword());
		if (loginUser != null) {
			message = "";
			ActionContext.getContext().getSession().put("user",
					loginUser.getUsername());
			ActionContext.getContext().getSession().put("authority",
					loginUser.getAuthority());
			return SUCCESS;
		} else {
			message = "用户名或密码错误";
		}
		return INPUT;

	}

	@Override
	public void validate() {
		if (user.getUsername() == "" || user.getUsername().trim().equals("")) {
			addFieldError("user.username", "用户名不能为空");
		}
		if (user.getUsername().length() <= 2) {
			addFieldError("user.username", "用户名请大于两个字符");
		}
		if (user.getPassword() == "" || user.getUsername().trim().equals("")) {
			addFieldError("user.password", "密码不能为空");
		}
	}
}
