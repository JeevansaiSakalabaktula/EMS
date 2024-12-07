package com.klu.ElectionMonitoring;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.ElectionMonitoring.Entity.Admin;

public interface AdminInterface extends JpaRepository<Admin, String >{
	
	Admin findByUsernameAndPassword(String username, String password);

}
