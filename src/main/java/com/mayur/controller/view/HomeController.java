package com.mayur.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String addUser(){
        return "adduser";
    }

    @RequestMapping("/user/profile")
    public String userProfilePage(){
        return "userprofilepage";
    }

    @RequestMapping("/dashboard")
    public String dashboardPage(){
        return "dashboardpage";
    }

    @RequestMapping("/users")
    public String userList(){
        return "userlist";
    }


}
