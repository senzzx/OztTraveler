package com.ozt.traveler.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ozt.traveler.entity.User;
import com.ozt.traveler.service.IUserService;

@Controller  
@RequestMapping("/user") 
public class UserController {
    
	 @Autowired
	 private IUserService userService;  
	      
	 @RequestMapping("/index")  
	 public String toIndex(HttpServletRequest request,Model model){  
	     int userId = Integer.parseInt(request.getParameter("id"));  
	     User user = this.userService.getUserById(userId);  
	     model.addAttribute("user", user);  
	     return "showUser";  
	 }  
	 
	 @RequestMapping("/index2")  
     public String toIndex2(HttpServletRequest request,Model model){  
         int userId = Integer.parseInt(request.getParameter("id"));  
         User user = this.userService.getUserById(userId);  
         model.addAttribute("user", user);  
         return "testBoost";  
     }  
}  