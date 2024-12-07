package com.klu.ElectionMonitoring;

import java.util.List;

import com.klu.ElectionMonitoring.Entity.User;

public interface UserDAO {
	public void newUser(User user);
	public User findUser(String username,String password);
	List<User> getAllUsers();
	void deleteUser(String username);
}
