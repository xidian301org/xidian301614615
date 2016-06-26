package com.league.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.league.bean.Notice;
import com.league.bean.User;

public class NoticeDao extends HibernateDaoSupport{

	public void addNotice(Notice notice)
	{
		this.getHibernateTemplate().save(notice);
	}
	
	public void deleteNotice(Notice notice)
	{
		this.getHibernateTemplate().delete(notice);
	}
	public void updateNotice(Notice notice)
	{
		this.getHibernateTemplate().update(notice);
	}
	public Notice findNoticeByTitle(String title)
	{
		Notice notice = (Notice)this.getHibernateTemplate().get(Notice.class, title);
		return notice;
	}
	public List findAllNotice()
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from Notice");
		return list;
	}
	//获取时间
	public String GetNowDate(){
	    String temp_str="";
	    Date dt = new Date();
	    //最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成hh表示12小时制
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aa");
	    temp_str=sdf.format(dt);
	    return temp_str;
	}
	
	public List findNoticeTitle(String title)
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from Notice notice where title like ?",'%'+title+'%');
		return list;
	}
	
	public List findNoticeById(Integer id)
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from Notice notice where id = ?",id);
		return list;
	}
	
	public Notice findById(Integer id)
	{
		Notice notice= (Notice) this.getHibernateTemplate().get(Notice.class, id);
		return notice;
	}
	
	public Notice checkingSave(String title)
	{
		List list = getHibernateTemplate().find(
				"from Notice notice where title = ?",
				new String[] { title });
		if(list != null && list.size()>=1)
		{
			return (Notice)list.get(0);
		}
		return null;
	}
}
