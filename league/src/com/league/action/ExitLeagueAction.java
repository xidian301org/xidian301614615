package com.league.action;

import java.util.List;

import com.league.bean.League;
import com.league.bean.User;
import com.league.service.LeagueService;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExitLeagueAction extends ActionSupport {

	User user;

	UserService service;
	String message;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	@Override
	public String execute() throws Exception {
		user = this.service.findById(user.getId());
		String leaguename = delLeague(user.getExitleague(), user.getLeague());// ÓÃ""È¡´úlname
		user.setLeague(leaguename);
		user.setExitleague("");
		this.service.update(user);
		message = "";

		return SUCCESS;

	}

	public String delLeague(String lname, String league) {
		String s1 = league.replace(lname, "");
		return s1;
	}

}
