package com.league.action.league;

import java.util.List;

import com.league.bean.League;
import com.league.service.LeagueService;
import com.opensymphony.xwork2.ActionSupport;

public class LeagueInfoAction extends ActionSupport{
	League league;
	LeagueService service;
	List list;
	public League getLeague() {
		return league;
	}
	public void setLeague(League league) {
		this.league = league;
	}
	public LeagueService getService() {
		return service;
	}
	public void setService(LeagueService service) {
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
		league = this.service.findById(league.getId());
		list = service.findLeagueById(league.getId());
		return SUCCESS;
		
	}
}
