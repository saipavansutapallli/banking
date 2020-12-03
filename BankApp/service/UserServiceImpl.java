package com.bankapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bankapp.model.dao.user.User;
import com.bankapp.model.dao.user.UserDao;


@Service(value="us")
@Transactional
public class UserServiceImpl implements UserService{

	private UserDao userdao;
	@Autowired
	public UserServiceImpl(UserDao userdao) {
	
		this.userdao = userdao;
	}


	public void addUser(User user) {
		
		userdao.addUser(user);
	}

	
	public User getUser(String username, String password) {
		return userdao.getUser(username, password);
	}

	
	public User updateUser(int accountId, User user) {
		
		return userdao.updateUser(accountId, user);
	}

	
	public User getUser(int accountId) {
		
		return userdao.getUser(accountId);
	}

	
	public List<User> getallUser() {
		return userdao.getallUser();
	}


	public User deleteUser(int accountId) {
		return userdao.deleteUser(accountId);
	}

}