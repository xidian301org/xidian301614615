package com.league.service;

import java.util.List;

import com.league.bean.User;
import com.league.dao.UserDao;

public class UserService {
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void delete(User user) {

		this.userDao.deleteUser(user);
	}

	public List findAll() {

		return this.userDao.findAllUser();
	}

	public User findById(Integer id) {

		return this.userDao.findUserById(id);
	}

	public void save(User user) {

		this.userDao.addUser(user);
	}

	public void update(User user) {

		this.userDao.updateUser(user);
	}

	public User login(String uname, String upass) {
		User user = userDao.findUserByName(uname);
		if (null == user) {
			return null;
		}
		if (uname.equals(user.getUsername()) && upass.equals(user.getPassword())) {
			return user;
		}
		return null;
	}
//	public Boolean exitByLeague(String username,String lname,String league)
//	{
//		User user = userDao.findUserByName(username);
//		if(exist(lname, league).equals("yes"))
//		{
//			return true;
//		}
//		else {
//			return false;
//		}
//	}
	public List findUserById(Integer id)
	{
		return this.userDao.findById(id);
	}
	
	public List findUserByName(String username)
	{
		return this.userDao.findByName(username);
	}
	public User findByName(String username)
	{
		return this.userDao.findUserByName(username);
	}
	public List findNoCheckedUser()
	{
		return this.userDao.findNoCheckedUser();
	}
	public List findUserByLeague(String lname)
	{
		return this.userDao.findUserByLeague(lname);
	}
//	public User findByLeague(String lname)
//	{
//		return this.userDao.findByLeague(lname);
//	}
	
	public List findCheckedUser()
	{
		return this.userDao.findCheckedUser();
	}
	public User checkingUser(String username)
	{
		return this.userDao.checkingSave(username);
	}
	public List findMaster()
	{
		return this.userDao.findMaster();
	}
	
	public List findAllApple()
	{
		return this.userDao.findAllApply();
	}
	
//	public Integer findAuthorityById(Integer id)
//	{
//		return this.userDao.findAuthorityById(id);
//	}
	
}
