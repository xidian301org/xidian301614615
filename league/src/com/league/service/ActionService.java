package com.league.service;

import java.util.List;

import com.league.bean.Action;
import com.league.dao.ActionDao;

public class ActionService {
	ActionDao actionDao;

	public ActionDao getActionDao() {
		return actionDao;
	}

	public void setActionDao(ActionDao actionDao) {
		this.actionDao = actionDao;
	}
	public void delete(Action action) {

		this.actionDao.deleteAction(action);
	}

	public List findAll() {

		return this.actionDao.findAllAction();
	}

	public List findActionByName(String actionname) {

		return this.actionDao.findActionByName(actionname);
	}

	public void save(Action action) {

		this.actionDao.addAction(action);
	}

	public void update(Action action) {

		this.actionDao.updateAction(action);
	}
	
	public List findActionById(Integer id)
	{
		return this.actionDao.findActionById(id);
	}
	public Action findById(Integer id)
	{
		return this.actionDao.findById(id);
	}
	public List findNoCheckedAction()
	{
		return this.actionDao.findNoCheckedAction();
	}
	public List findCheckedAction()
	{
		return this.actionDao.findCheckedListAction();
	}
	public Action checkingSave(String actionname)
	{
		return this.actionDao.checkingSave(actionname);
	}
}
