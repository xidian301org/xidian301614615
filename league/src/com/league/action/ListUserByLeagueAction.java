package com.league.action;

import java.util.List;

import com.league.bean.League;
import com.league.bean.User;
import com.league.service.LeagueService;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class ListUserByLeagueAction extends ActionSupport{

	User user;
	UserService service;
	League league;
	LeagueService leagueService;
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
	@Override
	public String execute() throws Exception {

		league = this.leagueService.findById(league.getId());
		String lname = league.getLname();
		list = this.service.findUserByLeague(lname);
		return SUCCESS;
	}
}
