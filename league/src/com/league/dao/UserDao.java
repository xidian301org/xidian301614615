package com.league.dao;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.league.bean.User;


public class UserDao extends HibernateDaoSupport {
	// 添加User
	public void addUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	// 修改
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}

	// 删除
	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

	// 列表
	public List findAllUser() {
		List list = null;
		list = this.getHibernateTemplate().find("from User");
		return list;
	}
	public List findAllApply()
	{
		List list = null;
		list = this.getHibernateTemplate().find("from User user where exitleague is not null and exitleague <> ''");
		return list;
	}

	public User findUserById(Integer id) {
		User user = (User) this.getHibernateTemplate().get(User.class, id);
		return user;
	}

	public User findUserByNameAndPwd(String username, String password) {
		List list = getHibernateTemplate().find(
				"from User user where user.username = ? and user.password = ?",
				new String[] { username, password });
		if(list != null && list.size()>=1)
		{
			return (User)list.get(0);
		}
		return null;
	}
	
	
	public User findUserByName(String username)
	{
		List list = getHibernateTemplate().find("from User user where username=?",username);
		if(list != null && list.size()>=1)
		{
			return (User)list.get(0);
		}
		return null;
	}
	
	public List findByName(String username)
	{
		List list=null;
		list = this.getHibernateTemplate().find("from User user where username like ?",'%'+username+'%');
		return list;
	}
	public List findById(Integer id)
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from User user where id = ?",id);
		return list;
	}
	
	public List findNoCheckedUser()
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from User user where authority < 3");
		return list;
	}
	public List findCheckedUser()
	{
		List list = null;
		list = this.getHibernateTemplate().find("from User user where authority = 3");
		return list;
	}
	
	public List findUserByLeague(String lname)
	{
		List list=null ;
		list = this.getHibernateTemplate().find("from User user where league like ?",'%'+lname+'%');
		return list;
	}
//	public User findByLeague(String lname)
//	{
//		List list = getHibernateTemplate().find("from User user where league like ?",'%'+lname+'%');
//		if(list != null && list.size()>=1)
//		{
//			return (User)list.get(0);
//		}
//		return null;
//	}
	
	//验证
	public User checkingSave(String username)
	{
		List list = getHibernateTemplate().find(
				"from User user where user.username = ?",
				new String[] { username });
		if(list != null && list.size()>=1)
		{
			return (User)list.get(0);
		}
		return null;
	}
	public List findMaster()
	{
		List list = null;
		list = this.getHibernateTemplate().find("from User user where authority = 5");
		return list;
	}

	
}	

//	public Integer findAuthorityById(Integer id)
//	{
//		Integer authority;
//		User user;
//		user = (User) this.getHibernateTemplate().get(User.class, id);
//		authority = user.getAuthority();
//		return authority;
//		
//	}



//	public User findAuthorityByName(String username)
//	{
//		
//	}




/*
 * 		Session session = null;
	List userlist = null;
	try {
		session = hibernateTemplate.getSessionFactory().openSession();
		userlist = session.createQuery("from Login l order by l.id asc")
				.list();
	} catch (HibernateException e) {
		e.printStackTrace();
	} finally {
		session.close();
	}
	return userlist;
 */
 