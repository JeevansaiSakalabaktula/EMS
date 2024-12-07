package com.klu.ElectionMonitoring;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.ElectionMonitoring.Entity.Admin;
import com.klu.ElectionMonitoring.Entity.User;

public interface UserInterface extends JpaRepository<User, String>{
	User findByUsernameAndPassword(String username, String password); 
	
	void deleteByUsername(String username);
	
}
