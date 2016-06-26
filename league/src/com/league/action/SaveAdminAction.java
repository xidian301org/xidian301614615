package com.league.action;

import com.league.bean.User;
import com.league.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SaveAdminAction extends ActionSupport {

	private User user;
	private UserService service;
	String savemessage;

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

	@Override
	public String execute() throws Exception {
		User saveUser = this.service.checkingUser(user.getUsername());
		if (saveUser != null) {
			savemessage = "�û����ѱ�ע�ᣬ������û�����";
			return INPUT;
		}
		this.service.save(user);
		return SUCCESS;

	}

	@Override
	public void validate() {
		if (user.getUsername() == "" || user.getUsername().trim().equals("")) {
			addFieldError("user.username", "�û�������Ϊ��");
		}
		if (user.getUsername().length() <= 2) {
			addFieldError("user.username", "�û�������������ַ�");
		}
		if (user.getPassword() == "" || user.getUsername().trim().equals("")) {
			addFieldError("user.password", "���벻��Ϊ��");
		}
		if (user.getEmail() == "" || user.getEmail().trim().equals("")) {
			addFieldError("user.email", "�����ʼ�����Ϊ��");
		}
		if (exist("@", user.getEmail()).equals("no")) {
			addFieldError("user.email", "�Ƿ��ĵ����ʼ���ʽ");
		}

	}

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
