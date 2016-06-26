package com.league.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.league.bean.Action;
import com.league.bean.League;


public class ActionDao extends HibernateDaoSupport{

	public void addAction(Action action)
	{
		this.getHibernateTemplate().save(action);
	}
	
	public void deleteAction(Action action)
	{
		this.getHibernateTemplate().delete(action);
	}
	public void updateAction(Action action)
	{
		this.getHibernateTemplate().update(action);
	}

	public List findAllAction()
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from Action");
		return list;
	}
	public List findActionById(Integer id)
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from Action action where id = ?",id);
		return list;
	}
	public Action findById(Integer id)
	{
		Action action= (Action) this.getHibernateTemplate().get(Action.class, id);
		return action;
	}
	public List findActionByName(String actionname)
	{
		List list=null;
		list = this.getHibernateTemplate().find("from Action action where actionname like ? and checked = 'y'",'%'+actionname+'%');
		return list;
	}
	public List findNoCheckedAction()
	{
		List list = null;
		list = this.getHibernateTemplate().find("from Action action where checked = 'n'");
		return list;
	}
	public List findCheckedListAction()
	{
		List list = null;
		list = this.getHibernateTemplate().find("from Action action where checked = 'y'");
		return list;
	}
	public Action checkingSave(String actionname)
	{
		List list = getHibernateTemplate().find(
				"from Action action where actionname = ?",
				new String[] { actionname });
		if(list != null && list.size()>=1)
		{
			return (Action)list.get(0);
		}
		return null;
	}
}
