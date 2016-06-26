package com.league.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.league.bean.Board;


public class BoardDao extends HibernateDaoSupport{

	public void saveBoard(Board board)
	{
		this.getHibernateTemplate().save(board);
	}
	
	public void deleteBoard(Board board)
	{
		this.getHibernateTemplate().delete(board);
	}
	
	public List FindAllBoard()
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from Board");
		return list;
	}
	
	public Board FindById(Integer id)
	{
		Board board= (Board) this.getHibernateTemplate().get(Board.class, id);
		return board;
	}
}
