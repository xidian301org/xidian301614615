package com.league.action;

import java.util.List;

import com.league.bean.League;
import com.league.bean.User;
import com.league.service.LeagueService;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class JoinLeagueAction extends ActionSupport {

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

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
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
		user = this.service.findByName(ActionContext.getContext().getSession()
				.get("user").toString());
		Integer authority = (Integer) ActionContext.getContext().getSession()
				.get("authority");
		league = this.leagueService.findById(league.getId());
		

//		User userleague = this.service.findByLeague(league.getLname());
		if (authority >= 3) {
			if (exist(league.getLname(), user.getLeague()).equals("no")) {
				String leaguename = user.getLeague() + " " + league.getLname();
				user.setLeague(leaguename);
				this.service.update(user);
				message = "";

				return SUCCESS;
			} else {

				message = "您已参加该社团，不能重复加入";
				return ERROR;
			}
		} else {
			message = "你无权执行此操作。只有通过验证的帐号才能执行此操作！";
			return INPUT;
		}
	}
	@SuppressWarnings("unused")
	public String exist(String a, String q) {
		String s = "yes";
		String s1 = "no";
		int i = 0;
		outer: for (i = 0; i < a.length(); i++) {
			inner: for (int j = 0; j < q.length(); j++) {
				if (a.charAt(i) == q.charAt(j)) {
					System.out.println(j);
					continue outer;
				}
			}
			return s1;
		}
		return s;
	}
}

