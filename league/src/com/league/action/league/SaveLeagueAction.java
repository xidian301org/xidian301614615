package com.league.action.league;

import com.league.bean.League;
import com.league.service.LeagueService;
import com.opensymphony.xwork2.ActionSupport;

public class SaveLeagueAction extends ActionSupport {
	League league;
	LeagueService service;
	String savemessage;

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

	public String getSavemessage() {
		return savemessage;
	}

	public void setSavemessage(String savemessage) {
		this.savemessage = savemessage;
	}

	@Override
	public String execute() throws Exception {
		League saveLeague = this.service.checkingSave(league.getLname());
		if (saveLeague != null) {
			savemessage = "�������ѱ�ʹ�ã��������";
			return INPUT;
		} else {
			this.service.save(league);
			return SUCCESS;
		}
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
			addFieldError("league.master", "�糤����Ϊ��");
		}
		if (league.getMaster() == "" || league.getMaster().trim().equals("")) {
			addFieldError("league.email", "�����ʼ�����Ϊ��");
		}
		if (league.getIntroduce() == ""
				|| league.getIntroduce().trim().equals("")) {
			addFieldError("league.introduce", "��鲻��Ϊ��");
		}
		if (exist("@",league.getEmail()).equals("no")) {
			addFieldError("league.email", "�Ƿ��ĵ����ʼ���ʽ");
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
