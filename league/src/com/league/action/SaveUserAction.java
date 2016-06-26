package com.league.action;

import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class SaveUserAction extends ActionSupport {

	private User user;
	private UserService service;
	String savemessage;
	String password1;

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

	public String getSavemessage() {
		return savemessage;
	}

	public void setSavemessage(String savemessage) {
		this.savemessage = savemessage;
	}
	

	 public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	@SuppressWarnings("unchecked")
	@Override
	 public String execute() throws Exception {
	 User saveUser = this.service.checkingUser(user.getUsername());
	 if (saveUser != null) {
	 savemessage = "用户名已被注册，请更换用户名！";
	 return INPUT;
	 }
	 this.service.save(user);
	 ActionContext.getContext().getSession().put("user", user.getUsername());
	 ActionContext.getContext().getSession().put("authority", 1);
	 return SUCCESS;
	 }

	@Override
	public void validate() {

		if (user.getUsername() == "" || user.getUsername().trim().equals("")) {
			addFieldError("user.username", "用户名不能为空");
		}
		if (user.getUsername().length() <= 2) {
			addFieldError("user.username", "用户名请大于两个字符");
		}
		if (user.getPassword() == "" || user.getUsername().trim().equals("")) {
			addFieldError("user.password", "密码不能为空");
		}
		if (user.getRealname() == "" || user.getRealname().trim().equals("")) {
			addFieldError("user.realname", "真实姓名不能为空");
		}
		if (user.getSn() == "" || user.getSn().trim().equals("")) {
			addFieldError("user.sn", "学号不能为空");
		}
		if (user.getSex() == "" || user.getSex().trim().equals("")) {
			addFieldError("user.sex", "性别不能为空");
		}
		if(!(user.getSex().trim().equals("男") ||  user.getSex().trim().equals("女")))
		{
			addFieldError("user.sex", "请填写男或女");
		}
		if (user.getCollege() == "" || user.getCollege().trim().equals("")) {
			addFieldError("user.college", "院系不能为空");
		}
		if (user.getPhone() == "" || user.getPhone().trim().equals("")) {
			addFieldError("user.phone", "手机号不能为空");
		}
		if (isNum(user.getPhone().toString())==false) {
			addFieldError("user.phone", "手机号输入非法！");
		}
		if (user.getEmail() == "" || user.getEmail().trim().equals("")) {
			addFieldError("user.email", "电子邮件不能为空");
		}
		if(exist("@", user.getEmail()).equals("no"))
		{
			addFieldError("user.email", "非法的电子邮件格式");
		}
		if(!user.getPassword().equals(password1))
		{
			addFieldError("password1", "两次输入的密码不一致");
		}

	}
	public static boolean isNum(String str){
		return str.matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$");
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
