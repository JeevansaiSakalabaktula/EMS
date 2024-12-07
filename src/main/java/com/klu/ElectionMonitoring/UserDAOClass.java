package com.klu.ElectionMonitoring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.ElectionMonitoring.Entity.User;

import jakarta.transaction.Transactional;

@Service
public class UserDAOClass implements UserDAO {

    @Autowired
    private UserInterface pi;

    @Override
    @Transactional
    public void newUser(User user) {
        pi.save(user);
    }

    @Override
    public User findUser(String username, String password) {
        return pi.findByUsernameAndPassword(username, password);
    }

    @Override
    @Transactional
    public List<User> getAllUsers() {
        return pi.findAll();
    }
    
    @Override
    @Transactional
    public void deleteUser(String username) {
        pi.deleteByUsername(username);
    }

}
