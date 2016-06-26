package com.league.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.league.bean.League;
import com.league.bean.Notice;

public class LeagueDao extends HibernateDaoSupport {

	public void addLeague(League league) {
		this.getHibernateTemplate().save(league);
	}

	public void deleteLeague(League league) {
		this.getHibernateTemplate().delete(league);
	}

	public void updateLeague(League league) {
		this.getHibernateTemplate().update(league);
	}

	public List findAllNotice() {
		List list = null;
		list = this.getHibernateTemplate().find("from League");
		return list;
	}
	
	public League findById(Integer id)
	{
		League league= (League) this.getHibernateTemplate().get(League.class, id);
		return league;
	}
	

	
	public List findLeagueById(Integer id)
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from League league where id = ?",id);
		return list;
	}
	
	public List findLeagueByName(String lname)
	{
		List list=null;
		list = this.getHibernateTemplate().find("from League league where lname like ?",'%'+lname+'%');
		return list;
	}
	
	public League checkingSave(String lname)
	{
		List list = getHibernateTemplate().find(
				"from League league where lname = ?",
				new String[] { lname });
		if(list != null && list.size()>=1)
		{
			return (League)list.get(0);
		}
		return null;
	}
}
