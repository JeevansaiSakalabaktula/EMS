package com.klu.ElectionMonitoring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.ElectionMonitoring.Entity.Admin;

@Service
public class AdminDAOClass implements AdminDAO{
	@Autowired
	AdminInterface ai;

	@Override
	public Admin findAdmin(String username, String password) {
		// TODO Auto-generated method stub
		return ai.findByUsernameAndPassword(username, password);
	}
	
	
	
}
