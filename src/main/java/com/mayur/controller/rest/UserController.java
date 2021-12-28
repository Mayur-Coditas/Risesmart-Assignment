package com.mayur.controller.rest;

import com.mayur.dto.ApiUserRequest;
import com.mayur.model.User;
import com.mayur.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public void registerUser(@RequestBody ApiUserRequest apiUserRequest) {
         userService.registerUser(apiUserRequest);
    }

    @GetMapping("/{userId}")
    public User getUserDetails(@PathVariable("userId") Integer userId) {
        return userService.getUserDetails(userId);
    }

    @GetMapping("/list")
    public List<User> getAllUsers(){
        return userService.getAllUsers();
    }

    @PutMapping("/update/{userId}")
    public void updateUser(@PathVariable("userId") Integer userId,
                           @RequestBody ApiUserRequest apiUserRequest){
        userService.updateUser(userId,apiUserRequest);
    }

}

