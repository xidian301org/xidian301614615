package com.league.action;

import java.util.List;

import com.league.bean.League;
import com.league.bean.User;
import com.league.service.LeagueService;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteApplyAction extends ActionSupport{

	User user;
	League league;
	LeagueService leagueService;
	UserService service;
	String message;
	List list;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public League getLeague() {
		return league;
	}

	public void setLeague(League league) {
		this.league = league;
	}

	public LeagueService getLeagueService() {
		return leagueService;
	}

	public void setLeagueService(LeagueService leagueService) {
		this.leagueService = leagueService;
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
		user.setExitleague("");
		this.service.update(user);
		message = "";

		return SUCCESS;

	}
}
