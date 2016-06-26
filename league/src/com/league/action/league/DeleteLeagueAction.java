package com.league.action.league;

import java.util.List;

import com.league.bean.League;
import com.league.service.LeagueService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteLeagueAction extends ActionSupport {
	League league;
	LeagueService service;
	String message;

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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String execute() throws Exception {
		Integer authority = (Integer) ActionContext.getContext().getSession()
				.get("authority");
		if (authority >= 8) {
			message = "";
			this.service.delete(league);
			return SUCCESS;
		}

		else {
			message = "你无权执行此操作。请先登录管理员帐号再执行此操作！";
			return INPUT;
		}
	}
}
