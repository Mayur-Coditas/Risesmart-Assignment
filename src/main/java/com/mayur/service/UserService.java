package com.mayur.service;

import com.mayur.dto.ApiUserRequest;
import com.mayur.model.User;
import com.mayur.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void registerUser(ApiUserRequest apiUserRequest) {
        User user = new User();

        user.setFirstName(apiUserRequest.getFirstName());
        user.setLastName(apiUserRequest.getLastName());
        user.setAddress(apiUserRequest.getAddress());
        user.setMobileNumber(apiUserRequest.getMobileNumber());
        user.setEmail(apiUserRequest.getEmail());
        user.setPassword(apiUserRequest.getPassword());
        user.setAdmin(apiUserRequest.isAdmin());

        try{
            userRepository.registerUser(user);
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public User getUserDetails(Integer userId) {
        return userRepository.getUserDetails(userId);
    }

    public List<User> getAllUsers() {
        return userRepository.getAllUsers();
    }

    public void updateUser(Integer userId, ApiUserRequest apiUserRequest) {

        User user = getUserDetails(userId);

        user.setUserId(userId);
        user.setFirstName(apiUserRequest.getFirstName());
        user.setLastName(apiUserRequest.getLastName());
        user.setAddress(apiUserRequest.getAddress());
        user.setMobileNumber(apiUserRequest.getMobileNumber());
        user.setEmail(apiUserRequest.getEmail());

        userRepository.save(user);
    }
}
