package com.league.action.league;

import com.league.bean.League;
import com.league.service.LeagueService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateLeagueAction extends ActionSupport{

	League league;
	LeagueService service;
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
	
	@Override
	public String execute() throws Exception {
		this.service.update(league);

		return SUCCESS;
	}
	
	@Override
	public void validate() {
		if (league.getLname() == "" || league.getLname().trim().equals("")) {
			addFieldError("league.lname", "����������Ϊ��");
		}
		if (league.getDay() == "" || league.getDay().trim().equals("")) {
			addFieldError("league.day", "�������ڲ���Ϊ��");
		}
		if (league.getMaster() == "" || league.getMaster().trim().equals("")) {
			addFieldError("league.lname", "�糤����Ϊ��");
		}
		if (league.getIntroduce() == "" || league.getIntroduce().trim().equals("")) {
			addFieldError("league.introduce", "��鲻��Ϊ��");
		}
	}
}
