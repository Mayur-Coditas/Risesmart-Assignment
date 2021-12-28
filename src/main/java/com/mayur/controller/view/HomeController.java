package com.mayur.controller.view;



import com.mayur.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

   
    @RequestMapping("/user")
    public String addUser(){
        return "adduser";
    }

    @RequestMapping("/user/profile/{id}")
    public String userProfilePage(@PathVariable("id") Integer id,Model model){
        model.addAttribute("id",id);
        return "userprofilepage";
    }

    @RequestMapping("/")
    public String dashboardPage(){
        return "dashboardpage";
    }

    @GetMapping("/users")
    public String userList(Model model){
        model.addAttribute("userList",userService.getAllUsers());
        return "userlist";
    }

    @RequestMapping("/login")
    public String loginPage(){
        return "login";
    }



}
