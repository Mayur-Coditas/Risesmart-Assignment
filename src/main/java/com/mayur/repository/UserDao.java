package com.mayur.repository;

import com.mayur.model.User;

import java.util.List;

public interface UserDao {

    public void registerUser(User user) throws Exception;
    public User getUserDetails(Integer userId);
    public List<User> getAllUsers();

}
