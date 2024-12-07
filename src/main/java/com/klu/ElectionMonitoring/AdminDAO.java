package com.klu.ElectionMonitoring;

import com.klu.ElectionMonitoring.Entity.Admin;

public interface AdminDAO {
	public Admin findAdmin(String username, String password);
}
