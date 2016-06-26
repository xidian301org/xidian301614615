package com.league.service;

import java.util.List;

import com.league.bean.League;
import com.league.dao.LeagueDao;

public class LeagueService {

	LeagueDao leagueDao;

	public LeagueDao getLeagueDao() {
		return leagueDao;
	}

	public void setLeagueDao(LeagueDao leagueDao) {
		this.leagueDao = leagueDao;
	}
	
	public void delete(League league)
	{
		this.leagueDao.deleteLeague(league);
	}
	public List findAll()
	{
		return this.leagueDao.findAllNotice();
	}
	public List findLeagueByName(String lname)
	{
		return this.leagueDao.findLeagueByName(lname);
	}
	public void save(League league)
	{
		this.leagueDao.addLeague(league);
	}
	public void update(League league)
	{
		this.leagueDao.updateLeague(league);
	}
	public List findLeagueById(Integer id)
	{
		return this.leagueDao.findLeagueById(id);
	}
	public League findById(Integer id)
	{
		return this.leagueDao.findById(id);
	}
	public League checkingSave(String lname)
	{
		return this.leagueDao.checkingSave(lname);
	}
}
